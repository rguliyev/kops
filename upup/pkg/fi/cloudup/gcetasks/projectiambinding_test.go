/*
Copyright 2021 The Kubernetes Authors.

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
*/

package gcetasks

import (
	"context"
	"os"
	"path/filepath"
	"strings"
	"testing"

	gcemock "k8s.io/kops/cloudmock/gce"
	"k8s.io/kops/upup/pkg/fi"
	"k8s.io/kops/upup/pkg/fi/cloudup/terraform"
)

func TestProjectIAMBinding(t *testing.T) {
	ctx := context.TODO()

	project := "testproject"
	region := "us-test1"

	cloud := gcemock.InstallMockGCECloud(region, project)

	// We define a function so we can rebuild the tasks, because we modify in-place when running
	buildTasks := func() map[string]fi.CloudupTask {
		serviceAccount := &ServiceAccount{
			Lifecycle: fi.LifecycleSync,

			Email: fi.PtrTo("foo@testproject.iam.gserviceaccount.com"),
		}

		binding := &ProjectIAMBinding{
			Lifecycle: fi.LifecycleSync,

			Project:              fi.PtrTo("testproject"),
			MemberServiceAccount: serviceAccount,
			Role:                 fi.PtrTo("roles/owner"),
		}

		return map[string]fi.CloudupTask{
			"serviceAccount": serviceAccount,
			"binding":        binding,
		}
	}

	{
		allTasks := buildTasks()
		checkHasChanges(t, ctx, cloud, allTasks)
	}

	{
		allTasks := buildTasks()
		runTasks(t, ctx, cloud, allTasks)
	}

	{
		allTasks := buildTasks()
		checkNoChanges(t, ctx, cloud, allTasks)
	}
}

func TestProjectIAMBindingRenderTerraform(t *testing.T) {
	outDir := t.TempDir()
	cloud := gcemock.InstallMockGCECloud("us-test1", "testproject")
	target := terraform.NewTerraformTarget(cloud, "testproject", outDir, nil)
	task := &ProjectIAMBinding{
		Name:    fi.PtrTo("serviceaccount-nodes"),
		Project: fi.PtrTo("testproject"),
		MemberServiceAccount: &ServiceAccount{
			Name: fi.PtrTo("node"),
		},
		Role: fi.PtrTo("roles/compute.viewer"),
	}

	if err := task.RenderTerraform(target, nil, task, task); err != nil {
		t.Fatalf("RenderTerraform() error: %v", err)
	}
	if err := target.Finish(nil); err != nil {
		t.Fatalf("Finish() error: %v", err)
	}

	b, err := os.ReadFile(filepath.Join(outDir, "kubernetes.tf"))
	if err != nil {
		t.Fatalf("reading rendered Terraform: %v", err)
	}
	rendered := string(b)
	if !strings.Contains(rendered, `resource "google_project_iam_member" "serviceaccount-nodes"`) {
		t.Errorf("rendered Terraform does not contain google_project_iam_member:\n%s", rendered)
	}
	if !strings.Contains(rendered, `member  = format("serviceAccount:%s", google_service_account.node.email)`) {
		t.Errorf("rendered Terraform does not contain the service account member expression:\n%s", rendered)
	}
	if strings.Contains(rendered, "google_project_iam_binding") || strings.Contains(rendered, "members =") {
		t.Errorf("rendered Terraform contains authoritative IAM binding syntax:\n%s", rendered)
	}
}
