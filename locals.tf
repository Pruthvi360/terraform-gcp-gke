locals {
    region = "us-west"
    org_id = "772284654262"
    biliing_account = "01B96A-7D7A26-AF0E9A"
    host_project_name = "automation_kube"
    service_project_name = "kube-ngnix"
    host_project_id = "${local.host_project_name}-${random_integer.int.result}"
    service_project_id = "${local.service_project_name}-${random_integer.int.result}"
    projects_api = "container.googleapis.com"
    secondary_ip_ranges = {
        "pod-ip-range" = "192.168.10.0/24"
        "services-ip-range" = "192.168.11.0/24"
    }
}