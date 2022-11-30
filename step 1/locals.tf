locals {
  region               = "us-west2"
  org_id               = "**"
  billing_account      = "**"
  host_project_name    = "automation-kube"
  service_project_name = "kube-pruthvi"
  host_project_id      = "${local.host_project_name}-${random_integer.int.result}"
  service_project_id   = "${local.service_project_name}-${random_integer.int.result}"
  projects_api         = "container.googleapis.com"
  secondary_ip_ranges = {
    "pod-ip-range"      = "10.0.0.0/14",
    "services-ip-range" = "10.4.0.0/19"
  }
}
