locals {
  region               = "us-west2"
  org_id               = "772284654262"
  billing_account      = "01B96A-7D7A26-AF0E9A"
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