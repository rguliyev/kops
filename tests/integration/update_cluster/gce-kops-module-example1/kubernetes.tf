locals {
  cluster_name = "k8s1.tomas-virgl.e2b-test.dev"
  project      = "e2b-dev-tomas-virgl-k8s"
  region       = "us-west1"
}

output "cluster_name" {
  value = "k8s1.tomas-virgl.e2b-test.dev"
}

output "project" {
  value = "e2b-dev-tomas-virgl-k8s"
}

output "region" {
  value = "us-west1"
}

provider "google" {
  project = "e2b-dev-tomas-virgl-k8s"
  region  = "us-west1"
}

provider "aws" {
  alias  = "files"
  region = "us-test-1"
}

resource "aws_s3_object" "cluster-completed-spec" {
  bucket                 = "testingBucket"
  content                = file("${path.module}/data/aws_s3_object_cluster-completed.spec_content")
  key                    = "tests/k8s1.tomas-virgl.e2b-test.dev/cluster-completed.spec"
  provider               = aws.files
  server_side_encryption = "AES256"
}

resource "aws_s3_object" "etcd-cluster-spec-events" {
  bucket                 = "testingBucket"
  content                = file("${path.module}/data/aws_s3_object_etcd-cluster-spec-events_content")
  key                    = "tests/k8s1.tomas-virgl.e2b-test.dev/backups/etcd/events/control/etcd-cluster-spec"
  provider               = aws.files
  server_side_encryption = "AES256"
}

resource "aws_s3_object" "etcd-cluster-spec-main" {
  bucket                 = "testingBucket"
  content                = file("${path.module}/data/aws_s3_object_etcd-cluster-spec-main_content")
  key                    = "tests/k8s1.tomas-virgl.e2b-test.dev/backups/etcd/main/control/etcd-cluster-spec"
  provider               = aws.files
  server_side_encryption = "AES256"
}

resource "aws_s3_object" "k8s1-tomas-virgl-e2b-test-dev-addons-bootstrap" {
  bucket                 = "testingBucket"
  content                = file("${path.module}/data/aws_s3_object_k8s1.tomas-virgl.e2b-test.dev-addons-bootstrap_content")
  key                    = "tests/k8s1.tomas-virgl.e2b-test.dev/addons/bootstrap-channel.yaml"
  provider               = aws.files
  server_side_encryption = "AES256"
}

resource "aws_s3_object" "k8s1-tomas-virgl-e2b-test-dev-addons-coredns-addons-k8s-io-k8s-1-12" {
  bucket                 = "testingBucket"
  content                = file("${path.module}/data/aws_s3_object_k8s1.tomas-virgl.e2b-test.dev-addons-coredns.addons.k8s.io-k8s-1.12_content")
  key                    = "tests/k8s1.tomas-virgl.e2b-test.dev/addons/coredns.addons.k8s.io/k8s-1.12.yaml"
  provider               = aws.files
  server_side_encryption = "AES256"
}

resource "aws_s3_object" "k8s1-tomas-virgl-e2b-test-dev-addons-gcp-cloud-controller-addons-k8s-io-k8s-1-23" {
  bucket                 = "testingBucket"
  content                = file("${path.module}/data/aws_s3_object_k8s1.tomas-virgl.e2b-test.dev-addons-gcp-cloud-controller.addons.k8s.io-k8s-1.23_content")
  key                    = "tests/k8s1.tomas-virgl.e2b-test.dev/addons/gcp-cloud-controller.addons.k8s.io/k8s-1.23.yaml"
  provider               = aws.files
  server_side_encryption = "AES256"
}

resource "aws_s3_object" "k8s1-tomas-virgl-e2b-test-dev-addons-gcp-pd-csi-driver-addons-k8s-io-k8s-1-23" {
  bucket                 = "testingBucket"
  content                = file("${path.module}/data/aws_s3_object_k8s1.tomas-virgl.e2b-test.dev-addons-gcp-pd-csi-driver.addons.k8s.io-k8s-1.23_content")
  key                    = "tests/k8s1.tomas-virgl.e2b-test.dev/addons/gcp-pd-csi-driver.addons.k8s.io/k8s-1.23.yaml"
  provider               = aws.files
  server_side_encryption = "AES256"
}

resource "aws_s3_object" "k8s1-tomas-virgl-e2b-test-dev-addons-kops-controller-addons-k8s-io-k8s-1-16" {
  bucket                 = "testingBucket"
  content                = file("${path.module}/data/aws_s3_object_k8s1.tomas-virgl.e2b-test.dev-addons-kops-controller.addons.k8s.io-k8s-1.16_content")
  key                    = "tests/k8s1.tomas-virgl.e2b-test.dev/addons/kops-controller.addons.k8s.io/k8s-1.16.yaml"
  provider               = aws.files
  server_side_encryption = "AES256"
}

resource "aws_s3_object" "k8s1-tomas-virgl-e2b-test-dev-addons-kubelet-api-rbac-addons-k8s-io-k8s-1-9" {
  bucket                 = "testingBucket"
  content                = file("${path.module}/data/aws_s3_object_k8s1.tomas-virgl.e2b-test.dev-addons-kubelet-api.rbac.addons.k8s.io-k8s-1.9_content")
  key                    = "tests/k8s1.tomas-virgl.e2b-test.dev/addons/kubelet-api.rbac.addons.k8s.io/k8s-1.9.yaml"
  provider               = aws.files
  server_side_encryption = "AES256"
}

resource "aws_s3_object" "k8s1-tomas-virgl-e2b-test-dev-addons-limit-range-addons-k8s-io" {
  bucket                 = "testingBucket"
  content                = file("${path.module}/data/aws_s3_object_k8s1.tomas-virgl.e2b-test.dev-addons-limit-range.addons.k8s.io_content")
  key                    = "tests/k8s1.tomas-virgl.e2b-test.dev/addons/limit-range.addons.k8s.io/v1.5.0.yaml"
  provider               = aws.files
  server_side_encryption = "AES256"
}

resource "aws_s3_object" "k8s1-tomas-virgl-e2b-test-dev-addons-metrics-server-addons-k8s-io-k8s-1-11" {
  bucket                 = "testingBucket"
  content                = file("${path.module}/data/aws_s3_object_k8s1.tomas-virgl.e2b-test.dev-addons-metrics-server.addons.k8s.io-k8s-1.11_content")
  key                    = "tests/k8s1.tomas-virgl.e2b-test.dev/addons/metrics-server.addons.k8s.io/k8s-1.11.yaml"
  provider               = aws.files
  server_side_encryption = "AES256"
}

resource "aws_s3_object" "k8s1-tomas-virgl-e2b-test-dev-addons-networking-cilium-io-k8s-1-16" {
  bucket                 = "testingBucket"
  content                = file("${path.module}/data/aws_s3_object_k8s1.tomas-virgl.e2b-test.dev-addons-networking.cilium.io-k8s-1.16_content")
  key                    = "tests/k8s1.tomas-virgl.e2b-test.dev/addons/networking.cilium.io/k8s-1.16-v1.15.yaml"
  provider               = aws.files
  server_side_encryption = "AES256"
}

resource "aws_s3_object" "k8s1-tomas-virgl-e2b-test-dev-addons-storage-gce-addons-k8s-io-v1-7-0" {
  bucket                 = "testingBucket"
  content                = file("${path.module}/data/aws_s3_object_k8s1.tomas-virgl.e2b-test.dev-addons-storage-gce.addons.k8s.io-v1.7.0_content")
  key                    = "tests/k8s1.tomas-virgl.e2b-test.dev/addons/storage-gce.addons.k8s.io/v1.7.0.yaml"
  provider               = aws.files
  server_side_encryption = "AES256"
}

resource "aws_s3_object" "kops-version-txt" {
  bucket                 = "testingBucket"
  content                = file("${path.module}/data/aws_s3_object_kops-version.txt_content")
  key                    = "tests/k8s1.tomas-virgl.e2b-test.dev/kops-version.txt"
  provider               = aws.files
  server_side_encryption = "AES256"
}

resource "aws_s3_object" "manifests-etcdmanager-events-control-plane-us-west1-a" {
  bucket                 = "testingBucket"
  content                = file("${path.module}/data/aws_s3_object_manifests-etcdmanager-events-control-plane-us-west1-a_content")
  key                    = "tests/k8s1.tomas-virgl.e2b-test.dev/manifests/etcd/events-control-plane-us-west1-a.yaml"
  provider               = aws.files
  server_side_encryption = "AES256"
}

resource "aws_s3_object" "manifests-etcdmanager-events-control-plane-us-west1-b" {
  bucket                 = "testingBucket"
  content                = file("${path.module}/data/aws_s3_object_manifests-etcdmanager-events-control-plane-us-west1-b_content")
  key                    = "tests/k8s1.tomas-virgl.e2b-test.dev/manifests/etcd/events-control-plane-us-west1-b.yaml"
  provider               = aws.files
  server_side_encryption = "AES256"
}

resource "aws_s3_object" "manifests-etcdmanager-events-control-plane-us-west1-c" {
  bucket                 = "testingBucket"
  content                = file("${path.module}/data/aws_s3_object_manifests-etcdmanager-events-control-plane-us-west1-c_content")
  key                    = "tests/k8s1.tomas-virgl.e2b-test.dev/manifests/etcd/events-control-plane-us-west1-c.yaml"
  provider               = aws.files
  server_side_encryption = "AES256"
}

resource "aws_s3_object" "manifests-etcdmanager-main-control-plane-us-west1-a" {
  bucket                 = "testingBucket"
  content                = file("${path.module}/data/aws_s3_object_manifests-etcdmanager-main-control-plane-us-west1-a_content")
  key                    = "tests/k8s1.tomas-virgl.e2b-test.dev/manifests/etcd/main-control-plane-us-west1-a.yaml"
  provider               = aws.files
  server_side_encryption = "AES256"
}

resource "aws_s3_object" "manifests-etcdmanager-main-control-plane-us-west1-b" {
  bucket                 = "testingBucket"
  content                = file("${path.module}/data/aws_s3_object_manifests-etcdmanager-main-control-plane-us-west1-b_content")
  key                    = "tests/k8s1.tomas-virgl.e2b-test.dev/manifests/etcd/main-control-plane-us-west1-b.yaml"
  provider               = aws.files
  server_side_encryption = "AES256"
}

resource "aws_s3_object" "manifests-etcdmanager-main-control-plane-us-west1-c" {
  bucket                 = "testingBucket"
  content                = file("${path.module}/data/aws_s3_object_manifests-etcdmanager-main-control-plane-us-west1-c_content")
  key                    = "tests/k8s1.tomas-virgl.e2b-test.dev/manifests/etcd/main-control-plane-us-west1-c.yaml"
  provider               = aws.files
  server_side_encryption = "AES256"
}

resource "aws_s3_object" "manifests-static-kube-apiserver-healthcheck" {
  bucket                 = "testingBucket"
  content                = file("${path.module}/data/aws_s3_object_manifests-static-kube-apiserver-healthcheck_content")
  key                    = "tests/k8s1.tomas-virgl.e2b-test.dev/manifests/static/kube-apiserver-healthcheck.yaml"
  provider               = aws.files
  server_side_encryption = "AES256"
}

resource "aws_s3_object" "nodeupconfig-control-plane-us-west1-a" {
  bucket                 = "testingBucket"
  content                = file("${path.module}/data/aws_s3_object_nodeupconfig-control-plane-us-west1-a_content")
  key                    = "tests/k8s1.tomas-virgl.e2b-test.dev/igconfig/control-plane/control-plane-us-west1-a/nodeupconfig.yaml"
  provider               = aws.files
  server_side_encryption = "AES256"
}

resource "aws_s3_object" "nodeupconfig-control-plane-us-west1-b" {
  bucket                 = "testingBucket"
  content                = file("${path.module}/data/aws_s3_object_nodeupconfig-control-plane-us-west1-b_content")
  key                    = "tests/k8s1.tomas-virgl.e2b-test.dev/igconfig/control-plane/control-plane-us-west1-b/nodeupconfig.yaml"
  provider               = aws.files
  server_side_encryption = "AES256"
}

resource "aws_s3_object" "nodeupconfig-control-plane-us-west1-c" {
  bucket                 = "testingBucket"
  content                = file("${path.module}/data/aws_s3_object_nodeupconfig-control-plane-us-west1-c_content")
  key                    = "tests/k8s1.tomas-virgl.e2b-test.dev/igconfig/control-plane/control-plane-us-west1-c/nodeupconfig.yaml"
  provider               = aws.files
  server_side_encryption = "AES256"
}

resource "aws_s3_object" "nodeupconfig-nodes-us-west1-a" {
  bucket                 = "testingBucket"
  content                = file("${path.module}/data/aws_s3_object_nodeupconfig-nodes-us-west1-a_content")
  key                    = "tests/k8s1.tomas-virgl.e2b-test.dev/igconfig/node/nodes-us-west1-a/nodeupconfig.yaml"
  provider               = aws.files
  server_side_encryption = "AES256"
}

resource "aws_s3_object" "nodeupconfig-nodes-us-west1-b" {
  bucket                 = "testingBucket"
  content                = file("${path.module}/data/aws_s3_object_nodeupconfig-nodes-us-west1-b_content")
  key                    = "tests/k8s1.tomas-virgl.e2b-test.dev/igconfig/node/nodes-us-west1-b/nodeupconfig.yaml"
  provider               = aws.files
  server_side_encryption = "AES256"
}

resource "aws_s3_object" "nodeupconfig-nodes-us-west1-c" {
  bucket                 = "testingBucket"
  content                = file("${path.module}/data/aws_s3_object_nodeupconfig-nodes-us-west1-c_content")
  key                    = "tests/k8s1.tomas-virgl.e2b-test.dev/igconfig/node/nodes-us-west1-c/nodeupconfig.yaml"
  provider               = aws.files
  server_side_encryption = "AES256"
}

resource "google_compute_address" "api-k8s1-tomas-virgl-e2b-test-dev" {
  name = "api-k8s1-tomas-virgl-e2b-test-dev"
}

resource "google_compute_address" "api-us-west1-k8s1-tomas-virgl-e2b-test-dev" {
  address_type = "INTERNAL"
  name         = "api-us-west1-k8s1-tomas-virgl-e2b-test-dev"
  purpose      = "SHARED_LOADBALANCER_VIP"
  subnetwork   = google_compute_subnetwork.us-west1-k8s1-tomas-virgl-e2b-test-dev.name
}

resource "google_compute_disk" "a-etcd-events-k8s1-tomas-virgl-e2b-test-dev" {
  labels = {
    "k8s-io-cluster-name" = "k8s1-tomas-virgl-e2b-test-dev"
    "k8s-io-etcd-events"  = "a-2fa-2cb-2cc"
    "k8s-io-role-master"  = "master"
  }
  name = "a-etcd-events-k8s1-tomas-virgl-e2b-test-dev"
  size = 20
  type = "pd-ssd"
  zone = "us-west1-a"
}

resource "google_compute_disk" "a-etcd-main-k8s1-tomas-virgl-e2b-test-dev" {
  labels = {
    "k8s-io-cluster-name" = "k8s1-tomas-virgl-e2b-test-dev"
    "k8s-io-etcd-main"    = "a-2fa-2cb-2cc"
    "k8s-io-role-master"  = "master"
  }
  name = "a-etcd-main-k8s1-tomas-virgl-e2b-test-dev"
  size = 20
  type = "pd-ssd"
  zone = "us-west1-a"
}

resource "google_compute_disk" "b-etcd-events-k8s1-tomas-virgl-e2b-test-dev" {
  labels = {
    "k8s-io-cluster-name" = "k8s1-tomas-virgl-e2b-test-dev"
    "k8s-io-etcd-events"  = "b-2fa-2cb-2cc"
    "k8s-io-role-master"  = "master"
  }
  name = "b-etcd-events-k8s1-tomas-virgl-e2b-test-dev"
  size = 20
  type = "pd-ssd"
  zone = "us-west1-b"
}

resource "google_compute_disk" "b-etcd-main-k8s1-tomas-virgl-e2b-test-dev" {
  labels = {
    "k8s-io-cluster-name" = "k8s1-tomas-virgl-e2b-test-dev"
    "k8s-io-etcd-main"    = "b-2fa-2cb-2cc"
    "k8s-io-role-master"  = "master"
  }
  name = "b-etcd-main-k8s1-tomas-virgl-e2b-test-dev"
  size = 20
  type = "pd-ssd"
  zone = "us-west1-b"
}

resource "google_compute_disk" "c-etcd-events-k8s1-tomas-virgl-e2b-test-dev" {
  labels = {
    "k8s-io-cluster-name" = "k8s1-tomas-virgl-e2b-test-dev"
    "k8s-io-etcd-events"  = "c-2fa-2cb-2cc"
    "k8s-io-role-master"  = "master"
  }
  name = "c-etcd-events-k8s1-tomas-virgl-e2b-test-dev"
  size = 20
  type = "pd-ssd"
  zone = "us-west1-c"
}

resource "google_compute_disk" "c-etcd-main-k8s1-tomas-virgl-e2b-test-dev" {
  labels = {
    "k8s-io-cluster-name" = "k8s1-tomas-virgl-e2b-test-dev"
    "k8s-io-etcd-main"    = "c-2fa-2cb-2cc"
    "k8s-io-role-master"  = "master"
  }
  name = "c-etcd-main-k8s1-tomas-virgl-e2b-test-dev"
  size = 20
  type = "pd-ssd"
  zone = "us-west1-c"
}

resource "google_compute_firewall" "https-api-ipv6-k8s1-tomas-virgl-e2b-test-dev" {
  allow {
    ports    = ["443"]
    protocol = "tcp"
  }
  disabled      = false
  name          = "https-api-ipv6-k8s1-tomas-virgl-e2b-test-dev"
  network       = "default"
  source_ranges = ["::/0"]
  target_tags   = ["k8s1-tomas-virgl-e2b-test-dev-k8s-io-role-control-plane"]
}

resource "google_compute_firewall" "https-api-k8s1-tomas-virgl-e2b-test-dev" {
  allow {
    ports    = ["443"]
    protocol = "tcp"
  }
  disabled      = false
  name          = "https-api-k8s1-tomas-virgl-e2b-test-dev"
  network       = "default"
  source_ranges = ["0.0.0.0/0"]
  target_tags   = ["k8s1-tomas-virgl-e2b-test-dev-k8s-io-role-control-plane"]
}

resource "google_compute_firewall" "kops-controller-ipv6-k8s1-tomas-virgl-e2b-test-dev" {
  allow {
    ports    = ["3988"]
    protocol = "tcp"
  }
  disabled      = false
  name          = "kops-controller-ipv6-k8s1-tomas-virgl-e2b-test-dev"
  network       = "default"
  source_ranges = ["::/0"]
  target_tags   = ["k8s1-tomas-virgl-e2b-test-dev-k8s-io-role-control-plane"]
}

resource "google_compute_firewall" "kops-controller-k8s1-tomas-virgl-e2b-test-dev" {
  allow {
    ports    = ["3988"]
    protocol = "tcp"
  }
  disabled      = false
  name          = "kops-controller-k8s1-tomas-virgl-e2b-test-dev"
  network       = "default"
  source_ranges = ["0.0.0.0/0"]
  target_tags   = ["k8s1-tomas-virgl-e2b-test-dev-k8s-io-role-control-plane"]
}

resource "google_compute_firewall" "lb-health-checks-k8s1-tomas-virgl-e2b-test-dev" {
  allow {
    protocol = "tcp"
  }
  disabled      = false
  name          = "lb-health-checks-k8s1-tomas-virgl-e2b-test-dev"
  network       = "default"
  source_ranges = ["35.191.0.0/16", "130.211.0.0/22", "209.85.204.0/22", "209.85.152.0/22"]
  target_tags   = ["k8s1-tomas-virgl-e2b-test-dev-k8s-io-role-control-plane"]
}

resource "google_compute_firewall" "master-to-master-k8s1-tomas-virgl-e2b-test-dev" {
  allow {
    protocol = "tcp"
  }
  allow {
    protocol = "udp"
  }
  allow {
    protocol = "icmp"
  }
  allow {
    protocol = "esp"
  }
  allow {
    protocol = "ah"
  }
  allow {
    protocol = "sctp"
  }
  disabled    = false
  name        = "master-to-master-k8s1-tomas-virgl-e2b-test-dev"
  network     = "default"
  source_tags = ["k8s1-tomas-virgl-e2b-test-dev-k8s-io-role-control-plane", "k8s1-tomas-virgl-e2b-test-dev-k8s-io-role-master"]
  target_tags = ["k8s1-tomas-virgl-e2b-test-dev-k8s-io-role-control-plane", "k8s1-tomas-virgl-e2b-test-dev-k8s-io-role-master"]
}

resource "google_compute_firewall" "master-to-node-k8s1-tomas-virgl-e2b-test-dev" {
  allow {
    protocol = "tcp"
  }
  allow {
    protocol = "udp"
  }
  allow {
    protocol = "icmp"
  }
  allow {
    protocol = "esp"
  }
  allow {
    protocol = "ah"
  }
  allow {
    protocol = "sctp"
  }
  disabled    = false
  name        = "master-to-node-k8s1-tomas-virgl-e2b-test-dev"
  network     = "default"
  source_tags = ["k8s1-tomas-virgl-e2b-test-dev-k8s-io-role-control-plane", "k8s1-tomas-virgl-e2b-test-dev-k8s-io-role-master"]
  target_tags = ["k8s1-tomas-virgl-e2b-test-dev-k8s-io-role-node"]
}

resource "google_compute_firewall" "node-to-master-k8s1-tomas-virgl-e2b-test-dev" {
  allow {
    ports    = ["443"]
    protocol = "tcp"
  }
  allow {
    ports    = ["10250"]
    protocol = "tcp"
  }
  allow {
    ports    = ["3988"]
    protocol = "tcp"
  }
  allow {
    ports    = ["8472"]
    protocol = "udp"
  }
  disabled    = false
  name        = "node-to-master-k8s1-tomas-virgl-e2b-test-dev"
  network     = "default"
  source_tags = ["k8s1-tomas-virgl-e2b-test-dev-k8s-io-role-node"]
  target_tags = ["k8s1-tomas-virgl-e2b-test-dev-k8s-io-role-control-plane", "k8s1-tomas-virgl-e2b-test-dev-k8s-io-role-master"]
}

resource "google_compute_firewall" "node-to-node-k8s1-tomas-virgl-e2b-test-dev" {
  allow {
    protocol = "tcp"
  }
  allow {
    protocol = "udp"
  }
  allow {
    protocol = "icmp"
  }
  allow {
    protocol = "esp"
  }
  allow {
    protocol = "ah"
  }
  allow {
    protocol = "sctp"
  }
  disabled    = false
  name        = "node-to-node-k8s1-tomas-virgl-e2b-test-dev"
  network     = "default"
  source_tags = ["k8s1-tomas-virgl-e2b-test-dev-k8s-io-role-node"]
  target_tags = ["k8s1-tomas-virgl-e2b-test-dev-k8s-io-role-node"]
}

resource "google_compute_firewall" "nodeport-external-to-node-ipv6-k8s1-tomas-virgl-e2b-test-dev" {
  allow {
    ports    = ["30000-32767"]
    protocol = "tcp"
  }
  allow {
    ports    = ["30000-32767"]
    protocol = "udp"
  }
  disabled      = true
  name          = "nodeport-external-to-node-ipv6-k8s1-tomas-virgl-e2b-test-dev"
  network       = "default"
  source_ranges = ["::/0"]
  target_tags   = ["k8s1-tomas-virgl-e2b-test-dev-k8s-io-role-node"]
}

resource "google_compute_firewall" "nodeport-external-to-node-k8s1-tomas-virgl-e2b-test-dev" {
  allow {
    ports    = ["30000-32767"]
    protocol = "tcp"
  }
  allow {
    ports    = ["30000-32767"]
    protocol = "udp"
  }
  disabled      = true
  name          = "nodeport-external-to-node-k8s1-tomas-virgl-e2b-test-dev"
  network       = "default"
  source_ranges = ["0.0.0.0/0"]
  target_tags   = ["k8s1-tomas-virgl-e2b-test-dev-k8s-io-role-node"]
}

resource "google_compute_firewall" "ssh-external-to-master-ipv6-k8s1-tomas-virgl-e2b-test-dev" {
  allow {
    ports    = ["22"]
    protocol = "tcp"
  }
  disabled      = true
  name          = "ssh-external-to-master-ipv6-k8s1-tomas-virgl-e2b-test-dev"
  network       = "default"
  source_ranges = ["::/0"]
  target_tags   = ["k8s1-tomas-virgl-e2b-test-dev-k8s-io-role-control-plane", "k8s1-tomas-virgl-e2b-test-dev-k8s-io-role-master"]
}

resource "google_compute_firewall" "ssh-external-to-master-k8s1-tomas-virgl-e2b-test-dev" {
  allow {
    ports    = ["22"]
    protocol = "tcp"
  }
  disabled      = true
  name          = "ssh-external-to-master-k8s1-tomas-virgl-e2b-test-dev"
  network       = "default"
  source_ranges = ["0.0.0.0/0"]
  target_tags   = ["k8s1-tomas-virgl-e2b-test-dev-k8s-io-role-control-plane", "k8s1-tomas-virgl-e2b-test-dev-k8s-io-role-master"]
}

resource "google_compute_firewall" "ssh-external-to-node-ipv6-k8s1-tomas-virgl-e2b-test-dev" {
  allow {
    ports    = ["22"]
    protocol = "tcp"
  }
  disabled      = true
  name          = "ssh-external-to-node-ipv6-k8s1-tomas-virgl-e2b-test-dev"
  network       = "default"
  source_ranges = ["::/0"]
  target_tags   = ["k8s1-tomas-virgl-e2b-test-dev-k8s-io-role-node"]
}

resource "google_compute_firewall" "ssh-external-to-node-k8s1-tomas-virgl-e2b-test-dev" {
  allow {
    ports    = ["22"]
    protocol = "tcp"
  }
  disabled      = true
  name          = "ssh-external-to-node-k8s1-tomas-virgl-e2b-test-dev"
  network       = "default"
  source_ranges = ["0.0.0.0/0"]
  target_tags   = ["k8s1-tomas-virgl-e2b-test-dev-k8s-io-role-node"]
}

resource "google_compute_forwarding_rule" "api-k8s1-tomas-virgl-e2b-test-dev" {
  ip_address  = google_compute_address.api-k8s1-tomas-virgl-e2b-test-dev.address
  ip_protocol = "TCP"
  labels = {
    "k8s-io-cluster-name" = "k8s1-tomas-virgl-e2b-test-dev"
    "name"                = "api"
  }
  load_balancing_scheme = "EXTERNAL"
  name                  = "api-k8s1-tomas-virgl-e2b-test-dev"
  port_range            = "443-443"
  target                = google_compute_target_pool.api-k8s1-tomas-virgl-e2b-test-dev.self_link
}

resource "google_compute_forwarding_rule" "api-us-west1-k8s1-tomas-virgl-e2b-test-dev" {
  backend_service = google_compute_region_backend_service.api-k8s1-tomas-virgl-e2b-test-dev.id
  ip_address      = google_compute_address.api-us-west1-k8s1-tomas-virgl-e2b-test-dev.address
  ip_protocol     = "TCP"
  labels = {
    "k8s-io-cluster-name" = "k8s1-tomas-virgl-e2b-test-dev"
    "name"                = "api-us-west1"
  }
  load_balancing_scheme = "INTERNAL"
  name                  = "api-us-west1-k8s1-tomas-virgl-e2b-test-dev"
  network               = "default"
  ports                 = ["443"]
  subnetwork            = google_compute_subnetwork.us-west1-k8s1-tomas-virgl-e2b-test-dev.name
}

resource "google_compute_forwarding_rule" "kops-controller-us-west1-k8s1-tomas-virgl-e2b-test-dev" {
  backend_service = google_compute_region_backend_service.api-k8s1-tomas-virgl-e2b-test-dev.id
  ip_address      = google_compute_address.api-us-west1-k8s1-tomas-virgl-e2b-test-dev.address
  ip_protocol     = "TCP"
  labels = {
    "k8s-io-cluster-name" = "k8s1-tomas-virgl-e2b-test-dev"
    "name"                = "kops-controller-us-west1"
  }
  load_balancing_scheme = "INTERNAL"
  name                  = "kops-controller-us-west1-k8s1-tomas-virgl-e2b-test-dev"
  network               = "default"
  ports                 = ["3988"]
  subnetwork            = google_compute_subnetwork.us-west1-k8s1-tomas-virgl-e2b-test-dev.name
}

resource "google_compute_http_health_check" "api-k8s1-tomas-virgl-e2b-test-dev" {
  name         = "api-k8s1-tomas-virgl-e2b-test-dev"
  port         = 3990
  request_path = "/healthz"
}

resource "google_compute_instance_group_manager" "a-control-plane-us-west1-a-k8s1-tomas-virgl-e2b-test-dev" {
  base_instance_name = "control-plane-us-west1-a"
  lifecycle {
    ignore_changes = [target_size]
  }
  list_managed_instances_results = "PAGINATED"
  name                           = "a-control-plane-us-west1-a-k8s1-tomas-virgl-e2b-test-dev"
  target_pools                   = [google_compute_target_pool.api-k8s1-tomas-virgl-e2b-test-dev.self_link]
  target_size                    = 1
  update_policy {
    max_unavailable_fixed = 1
    minimal_action        = "REPLACE"
    type                  = "OPPORTUNISTIC"
  }
  version {
    instance_template = google_compute_instance_template.control-plane-us-west1-a-k8s1-tomas-virgl-e2b-test-dev.self_link
  }
  zone = "us-west1-a"
}

resource "google_compute_instance_group_manager" "a-nodes-us-west1-a-k8s1-tomas-virgl-e2b-test-dev" {
  base_instance_name = "nodes-us-west1-a"
  lifecycle {
    ignore_changes = [target_size]
  }
  list_managed_instances_results = "PAGINATED"
  name                           = "a-nodes-us-west1-a-k8s1-tomas-virgl-e2b-test-dev"
  target_size                    = 1
  update_policy {
    max_unavailable_fixed = 1
    minimal_action        = "REPLACE"
    type                  = "OPPORTUNISTIC"
  }
  version {
    instance_template = google_compute_instance_template.nodes-us-west1-a-k8s1-tomas-virgl-e2b-test-dev.self_link
  }
  zone = "us-west1-a"
}

resource "google_compute_instance_group_manager" "b-control-plane-us-west1-b-k8s1-tomas-virgl-e2b-test-dev" {
  base_instance_name = "control-plane-us-west1-b"
  lifecycle {
    ignore_changes = [target_size]
  }
  list_managed_instances_results = "PAGINATED"
  name                           = "b-control-plane-us-west1-b-k8s1-tomas-virgl-e2b-test-dev"
  target_pools                   = [google_compute_target_pool.api-k8s1-tomas-virgl-e2b-test-dev.self_link]
  target_size                    = 1
  update_policy {
    max_unavailable_fixed = 1
    minimal_action        = "REPLACE"
    type                  = "OPPORTUNISTIC"
  }
  version {
    instance_template = google_compute_instance_template.control-plane-us-west1-b-k8s1-tomas-virgl-e2b-test-dev.self_link
  }
  zone = "us-west1-b"
}

resource "google_compute_instance_group_manager" "b-nodes-us-west1-b-k8s1-tomas-virgl-e2b-test-dev" {
  base_instance_name = "nodes-us-west1-b"
  lifecycle {
    ignore_changes = [target_size]
  }
  list_managed_instances_results = "PAGINATED"
  name                           = "b-nodes-us-west1-b-k8s1-tomas-virgl-e2b-test-dev"
  target_size                    = 1
  update_policy {
    max_unavailable_fixed = 1
    minimal_action        = "REPLACE"
    type                  = "OPPORTUNISTIC"
  }
  version {
    instance_template = google_compute_instance_template.nodes-us-west1-b-k8s1-tomas-virgl-e2b-test-dev.self_link
  }
  zone = "us-west1-b"
}

resource "google_compute_instance_group_manager" "c-control-plane-us-west1-c-k8s1-tomas-virgl-e2b-test-dev" {
  base_instance_name = "control-plane-us-west1-c"
  lifecycle {
    ignore_changes = [target_size]
  }
  list_managed_instances_results = "PAGINATED"
  name                           = "c-control-plane-us-west1-c-k8s1-tomas-virgl-e2b-test-dev"
  target_pools                   = [google_compute_target_pool.api-k8s1-tomas-virgl-e2b-test-dev.self_link]
  target_size                    = 1
  update_policy {
    max_unavailable_fixed = 1
    minimal_action        = "REPLACE"
    type                  = "OPPORTUNISTIC"
  }
  version {
    instance_template = google_compute_instance_template.control-plane-us-west1-c-k8s1-tomas-virgl-e2b-test-dev.self_link
  }
  zone = "us-west1-c"
}

resource "google_compute_instance_group_manager" "c-nodes-us-west1-c-k8s1-tomas-virgl-e2b-test-dev" {
  base_instance_name = "nodes-us-west1-c"
  lifecycle {
    ignore_changes = [target_size]
  }
  list_managed_instances_results = "PAGINATED"
  name                           = "c-nodes-us-west1-c-k8s1-tomas-virgl-e2b-test-dev"
  target_size                    = 1
  update_policy {
    max_unavailable_fixed = 1
    minimal_action        = "REPLACE"
    type                  = "OPPORTUNISTIC"
  }
  version {
    instance_template = google_compute_instance_template.nodes-us-west1-c-k8s1-tomas-virgl-e2b-test-dev.self_link
  }
  zone = "us-west1-c"
}

resource "google_compute_instance_template" "control-plane-us-west1-a-k8s1-tomas-virgl-e2b-test-dev" {
  can_ip_forward = true
  disk {
    auto_delete            = true
    boot                   = true
    device_name            = "persistent-disks-0"
    disk_name              = ""
    disk_size_gb           = 64
    disk_type              = "pd-standard"
    interface              = ""
    mode                   = "READ_WRITE"
    provisioned_iops       = 0
    provisioned_throughput = 0
    source                 = ""
    source_image           = "https://www.googleapis.com/compute/v1/projects/ubuntu-os-cloud/global/images/ubuntu-2404-noble-amd64-v20250606"
    type                   = "PERSISTENT"
  }
  labels = {
    "k8s-io-cluster-name"       = "k8s1-tomas-virgl-e2b-test-dev"
    "k8s-io-instance-group"     = "control-plane-us-west1-a"
    "k8s-io-role-control-plane" = "control-plane"
    "k8s-io-role-master"        = "master"
  }
  lifecycle {
    create_before_destroy = true
  }
  machine_type = "e2-medium"
  metadata = {
    "cluster-name"                    = "k8s1.tomas-virgl.e2b-test.dev"
    "kops-k8s-io-instance-group-name" = "control-plane-us-west1-a"
    "user-data"                       = file("${path.module}/data/google_compute_instance_template_control-plane-us-west1-a-k8s1-tomas-virgl-e2b-test-dev_metadata_user-data")
  }
  name_prefix = "control-plane-us-west1-a--f3tvsp-"
  network_interface {
    network    = "default"
    stack_type = "IPV4_ONLY"
    subnetwork = google_compute_subnetwork.us-west1-k8s1-tomas-virgl-e2b-test-dev.name
  }
  scheduling {
    automatic_restart   = true
    on_host_maintenance = "MIGRATE"
    preemptible         = false
    provisioning_model  = "STANDARD"
  }
  service_account {
    email  = google_service_account.control-plane.email
    scopes = ["https://www.googleapis.com/auth/compute", "https://www.googleapis.com/auth/monitoring", "https://www.googleapis.com/auth/logging.write", "https://www.googleapis.com/auth/cloud-platform", "https://www.googleapis.com/auth/devstorage.read_write", "https://www.googleapis.com/auth/ndev.clouddns.readwrite"]
  }
  tags = ["k8s1-tomas-virgl-e2b-test-dev-k8s-io-role-control-plane", "k8s1-tomas-virgl-e2b-test-dev-k8s-io-role-master"]
}

resource "google_compute_instance_template" "control-plane-us-west1-b-k8s1-tomas-virgl-e2b-test-dev" {
  can_ip_forward = true
  disk {
    auto_delete            = true
    boot                   = true
    device_name            = "persistent-disks-0"
    disk_name              = ""
    disk_size_gb           = 64
    disk_type              = "pd-standard"
    interface              = ""
    mode                   = "READ_WRITE"
    provisioned_iops       = 0
    provisioned_throughput = 0
    source                 = ""
    source_image           = "https://www.googleapis.com/compute/v1/projects/ubuntu-os-cloud/global/images/ubuntu-2404-noble-amd64-v20250606"
    type                   = "PERSISTENT"
  }
  labels = {
    "k8s-io-cluster-name"       = "k8s1-tomas-virgl-e2b-test-dev"
    "k8s-io-instance-group"     = "control-plane-us-west1-b"
    "k8s-io-role-control-plane" = "control-plane"
    "k8s-io-role-master"        = "master"
  }
  lifecycle {
    create_before_destroy = true
  }
  machine_type = "e2-medium"
  metadata = {
    "cluster-name"                    = "k8s1.tomas-virgl.e2b-test.dev"
    "kops-k8s-io-instance-group-name" = "control-plane-us-west1-b"
    "user-data"                       = file("${path.module}/data/google_compute_instance_template_control-plane-us-west1-b-k8s1-tomas-virgl-e2b-test-dev_metadata_user-data")
  }
  name_prefix = "control-plane-us-west1-b--5i3vtm-"
  network_interface {
    network    = "default"
    stack_type = "IPV4_ONLY"
    subnetwork = google_compute_subnetwork.us-west1-k8s1-tomas-virgl-e2b-test-dev.name
  }
  scheduling {
    automatic_restart   = true
    on_host_maintenance = "MIGRATE"
    preemptible         = false
    provisioning_model  = "STANDARD"
  }
  service_account {
    email  = google_service_account.control-plane.email
    scopes = ["https://www.googleapis.com/auth/compute", "https://www.googleapis.com/auth/monitoring", "https://www.googleapis.com/auth/logging.write", "https://www.googleapis.com/auth/cloud-platform", "https://www.googleapis.com/auth/devstorage.read_write", "https://www.googleapis.com/auth/ndev.clouddns.readwrite"]
  }
  tags = ["k8s1-tomas-virgl-e2b-test-dev-k8s-io-role-control-plane", "k8s1-tomas-virgl-e2b-test-dev-k8s-io-role-master"]
}

resource "google_compute_instance_template" "control-plane-us-west1-c-k8s1-tomas-virgl-e2b-test-dev" {
  can_ip_forward = true
  disk {
    auto_delete            = true
    boot                   = true
    device_name            = "persistent-disks-0"
    disk_name              = ""
    disk_size_gb           = 64
    disk_type              = "pd-standard"
    interface              = ""
    mode                   = "READ_WRITE"
    provisioned_iops       = 0
    provisioned_throughput = 0
    source                 = ""
    source_image           = "https://www.googleapis.com/compute/v1/projects/ubuntu-os-cloud/global/images/ubuntu-2404-noble-amd64-v20250606"
    type                   = "PERSISTENT"
  }
  labels = {
    "k8s-io-cluster-name"       = "k8s1-tomas-virgl-e2b-test-dev"
    "k8s-io-instance-group"     = "control-plane-us-west1-c"
    "k8s-io-role-control-plane" = "control-plane"
    "k8s-io-role-master"        = "master"
  }
  lifecycle {
    create_before_destroy = true
  }
  machine_type = "e2-medium"
  metadata = {
    "cluster-name"                    = "k8s1.tomas-virgl.e2b-test.dev"
    "kops-k8s-io-instance-group-name" = "control-plane-us-west1-c"
    "user-data"                       = file("${path.module}/data/google_compute_instance_template_control-plane-us-west1-c-k8s1-tomas-virgl-e2b-test-dev_metadata_user-data")
  }
  name_prefix = "control-plane-us-west1-c--vh54si-"
  network_interface {
    network    = "default"
    stack_type = "IPV4_ONLY"
    subnetwork = google_compute_subnetwork.us-west1-k8s1-tomas-virgl-e2b-test-dev.name
  }
  scheduling {
    automatic_restart   = true
    on_host_maintenance = "MIGRATE"
    preemptible         = false
    provisioning_model  = "STANDARD"
  }
  service_account {
    email  = google_service_account.control-plane.email
    scopes = ["https://www.googleapis.com/auth/compute", "https://www.googleapis.com/auth/monitoring", "https://www.googleapis.com/auth/logging.write", "https://www.googleapis.com/auth/cloud-platform", "https://www.googleapis.com/auth/devstorage.read_write", "https://www.googleapis.com/auth/ndev.clouddns.readwrite"]
  }
  tags = ["k8s1-tomas-virgl-e2b-test-dev-k8s-io-role-control-plane", "k8s1-tomas-virgl-e2b-test-dev-k8s-io-role-master"]
}

resource "google_compute_instance_template" "nodes-us-west1-a-k8s1-tomas-virgl-e2b-test-dev" {
  can_ip_forward = true
  disk {
    auto_delete            = true
    boot                   = true
    device_name            = "persistent-disks-0"
    disk_name              = ""
    disk_size_gb           = 128
    disk_type              = "pd-standard"
    interface              = ""
    mode                   = "READ_WRITE"
    provisioned_iops       = 0
    provisioned_throughput = 0
    source                 = ""
    source_image           = "https://www.googleapis.com/compute/v1/projects/ubuntu-os-cloud/global/images/ubuntu-2404-noble-amd64-v20250606"
    type                   = "PERSISTENT"
  }
  labels = {
    "k8s-io-cluster-name"   = "k8s1-tomas-virgl-e2b-test-dev"
    "k8s-io-instance-group" = "nodes-us-west1-a"
    "k8s-io-role-node"      = "node"
  }
  lifecycle {
    create_before_destroy = true
  }
  machine_type = "e2-medium"
  metadata = {
    "cluster-name"                    = "k8s1.tomas-virgl.e2b-test.dev"
    "kops-k8s-io-instance-group-name" = "nodes-us-west1-a"
    "kube-env"                        = "AUTOSCALER_ENV_VARS: os_distribution=ubuntu;arch=amd64;os=linux"
    "user-data"                       = file("${path.module}/data/google_compute_instance_template_nodes-us-west1-a-k8s1-tomas-virgl-e2b-test-dev_metadata_user-data")
  }
  name_prefix = "nodes-us-west1-a-k8s1-tom-rsmihs-"
  network_interface {
    network    = "default"
    stack_type = "IPV4_ONLY"
    subnetwork = google_compute_subnetwork.us-west1-k8s1-tomas-virgl-e2b-test-dev.name
  }
  scheduling {
    automatic_restart   = true
    on_host_maintenance = "MIGRATE"
    preemptible         = false
    provisioning_model  = "STANDARD"
  }
  service_account {
    email  = google_service_account.node.email
    scopes = ["https://www.googleapis.com/auth/compute", "https://www.googleapis.com/auth/monitoring", "https://www.googleapis.com/auth/logging.write", "https://www.googleapis.com/auth/cloud-platform", "https://www.googleapis.com/auth/devstorage.read_only"]
  }
  tags = ["k8s1-tomas-virgl-e2b-test-dev-k8s-io-role-node"]
}

resource "google_compute_instance_template" "nodes-us-west1-b-k8s1-tomas-virgl-e2b-test-dev" {
  can_ip_forward = true
  disk {
    auto_delete            = true
    boot                   = true
    device_name            = "persistent-disks-0"
    disk_name              = ""
    disk_size_gb           = 128
    disk_type              = "pd-standard"
    interface              = ""
    mode                   = "READ_WRITE"
    provisioned_iops       = 0
    provisioned_throughput = 0
    source                 = ""
    source_image           = "https://www.googleapis.com/compute/v1/projects/ubuntu-os-cloud/global/images/ubuntu-2404-noble-amd64-v20250606"
    type                   = "PERSISTENT"
  }
  labels = {
    "k8s-io-cluster-name"   = "k8s1-tomas-virgl-e2b-test-dev"
    "k8s-io-instance-group" = "nodes-us-west1-b"
    "k8s-io-role-node"      = "node"
  }
  lifecycle {
    create_before_destroy = true
  }
  machine_type = "e2-medium"
  metadata = {
    "cluster-name"                    = "k8s1.tomas-virgl.e2b-test.dev"
    "kops-k8s-io-instance-group-name" = "nodes-us-west1-b"
    "kube-env"                        = "AUTOSCALER_ENV_VARS: os_distribution=ubuntu;arch=amd64;os=linux"
    "user-data"                       = file("${path.module}/data/google_compute_instance_template_nodes-us-west1-b-k8s1-tomas-virgl-e2b-test-dev_metadata_user-data")
  }
  name_prefix = "nodes-us-west1-b-k8s1-tom-4vds37-"
  network_interface {
    network    = "default"
    stack_type = "IPV4_ONLY"
    subnetwork = google_compute_subnetwork.us-west1-k8s1-tomas-virgl-e2b-test-dev.name
  }
  scheduling {
    automatic_restart   = true
    on_host_maintenance = "MIGRATE"
    preemptible         = false
    provisioning_model  = "STANDARD"
  }
  service_account {
    email  = google_service_account.node.email
    scopes = ["https://www.googleapis.com/auth/compute", "https://www.googleapis.com/auth/monitoring", "https://www.googleapis.com/auth/logging.write", "https://www.googleapis.com/auth/cloud-platform", "https://www.googleapis.com/auth/devstorage.read_only"]
  }
  tags = ["k8s1-tomas-virgl-e2b-test-dev-k8s-io-role-node"]
}

resource "google_compute_instance_template" "nodes-us-west1-c-k8s1-tomas-virgl-e2b-test-dev" {
  can_ip_forward = true
  disk {
    auto_delete            = true
    boot                   = true
    device_name            = "persistent-disks-0"
    disk_name              = ""
    disk_size_gb           = 128
    disk_type              = "pd-standard"
    interface              = ""
    mode                   = "READ_WRITE"
    provisioned_iops       = 0
    provisioned_throughput = 0
    source                 = ""
    source_image           = "https://www.googleapis.com/compute/v1/projects/ubuntu-os-cloud/global/images/ubuntu-2404-noble-amd64-v20250606"
    type                   = "PERSISTENT"
  }
  labels = {
    "k8s-io-cluster-name"   = "k8s1-tomas-virgl-e2b-test-dev"
    "k8s-io-instance-group" = "nodes-us-west1-c"
    "k8s-io-role-node"      = "node"
  }
  lifecycle {
    create_before_destroy = true
  }
  machine_type = "e2-medium"
  metadata = {
    "cluster-name"                    = "k8s1.tomas-virgl.e2b-test.dev"
    "kops-k8s-io-instance-group-name" = "nodes-us-west1-c"
    "kube-env"                        = "AUTOSCALER_ENV_VARS: os_distribution=ubuntu;arch=amd64;os=linux"
    "user-data"                       = file("${path.module}/data/google_compute_instance_template_nodes-us-west1-c-k8s1-tomas-virgl-e2b-test-dev_metadata_user-data")
  }
  name_prefix = "nodes-us-west1-c-k8s1-tom-m565vu-"
  network_interface {
    network    = "default"
    stack_type = "IPV4_ONLY"
    subnetwork = google_compute_subnetwork.us-west1-k8s1-tomas-virgl-e2b-test-dev.name
  }
  scheduling {
    automatic_restart   = true
    on_host_maintenance = "MIGRATE"
    preemptible         = false
    provisioning_model  = "STANDARD"
  }
  service_account {
    email  = google_service_account.node.email
    scopes = ["https://www.googleapis.com/auth/compute", "https://www.googleapis.com/auth/monitoring", "https://www.googleapis.com/auth/logging.write", "https://www.googleapis.com/auth/cloud-platform", "https://www.googleapis.com/auth/devstorage.read_only"]
  }
  tags = ["k8s1-tomas-virgl-e2b-test-dev-k8s-io-role-node"]
}

resource "google_compute_region_backend_service" "api-k8s1-tomas-virgl-e2b-test-dev" {
  backend {
    balancing_mode = "CONNECTION"
    group          = google_compute_instance_group_manager.a-control-plane-us-west1-a-k8s1-tomas-virgl-e2b-test-dev.instance_group
  }
  backend {
    balancing_mode = "CONNECTION"
    group          = google_compute_instance_group_manager.b-control-plane-us-west1-b-k8s1-tomas-virgl-e2b-test-dev.instance_group
  }
  backend {
    balancing_mode = "CONNECTION"
    group          = google_compute_instance_group_manager.c-control-plane-us-west1-c-k8s1-tomas-virgl-e2b-test-dev.instance_group
  }
  health_checks         = [google_compute_region_health_check.api-k8s1-tomas-virgl-e2b-test-dev.id]
  load_balancing_scheme = "INTERNAL"
  name                  = "api-k8s1-tomas-virgl-e2b-test-dev"
  protocol              = "TCP"
}

resource "google_compute_region_health_check" "api-k8s1-tomas-virgl-e2b-test-dev" {
  name = "api-k8s1-tomas-virgl-e2b-test-dev"
  tcp_health_check {
    port = 443
  }
}

resource "google_compute_router" "nat-k8s1-tomas-virgl-e2b-test-dev" {
  name    = "nat-k8s1-tomas-virgl-e2b-test-dev"
  network = "default"
}

resource "google_compute_router_nat" "nat-k8s1-tomas-virgl-e2b-test-dev" {
  name                               = "nat-k8s1-tomas-virgl-e2b-test-dev"
  nat_ip_allocate_option             = "AUTO_ONLY"
  region                             = "us-west1"
  router                             = google_compute_router.nat-k8s1-tomas-virgl-e2b-test-dev.name
  source_subnetwork_ip_ranges_to_nat = "LIST_OF_SUBNETWORKS"
  subnetwork {
    name                    = google_compute_subnetwork.us-west1-k8s1-tomas-virgl-e2b-test-dev.name
    source_ip_ranges_to_nat = ["ALL_IP_RANGES"]
  }
}

resource "google_compute_subnetwork" "us-west1-k8s1-tomas-virgl-e2b-test-dev" {
  ip_cidr_range = "10.0.16.0/20"
  name          = "us-west1-k8s1-tomas-virgl-e2b-test-dev"
  network       = "default"
  region        = "us-west1"
  stack_type    = "IPV4_ONLY"
}

resource "google_compute_target_pool" "api-k8s1-tomas-virgl-e2b-test-dev" {
  health_checks = [google_compute_http_health_check.api-k8s1-tomas-virgl-e2b-test-dev.self_link]
  name          = "api-k8s1-tomas-virgl-e2b-test-dev"
}

resource "google_project_iam_member" "serviceaccount-control-plane" {
  member  = format("serviceAccount:%s", google_service_account.control-plane.email)
  project = "e2b-dev-tomas-virgl-k8s"
  role    = "roles/container.serviceAgent"
}

resource "google_project_iam_member" "serviceaccount-nodes" {
  member  = format("serviceAccount:%s", google_service_account.node.email)
  project = "e2b-dev-tomas-virgl-k8s"
  role    = "roles/compute.viewer"
}

resource "google_service_account" "control-plane" {
  account_id   = "control-plane-k8s1-toma-g73ca7"
  description  = "kubernetes control-plane instances"
  display_name = "control-plane"
  project      = "e2b-dev-tomas-virgl-k8s"
}

resource "google_service_account" "node" {
  account_id   = "node-k8s1-tomas-virgl-e-g73ca7"
  description  = "kubernetes worker nodes"
  display_name = "node"
  project      = "e2b-dev-tomas-virgl-k8s"
}

terraform {
  required_version = ">= 0.15.0"
  required_providers {
    aws = {
      "configuration_aliases" = [aws.files]
      "source"                = "hashicorp/aws"
      "version"               = ">= 5.0.0"
    }
    google = {
      "source"  = "hashicorp/google"
      "version" = ">= 5.11.0"
    }
  }
}
