resource "google_project" "automation-kube" {
    name = local.host_project_name
    project_id = local.host_project_id
    billing_account = local.billing_account
    org_id = local.org_id
    auto_create_network = false
}

resource "google_project" "kube-pruthvi" {
    name = local.service_project_name
    project_id = local.service_project_id
    billing_account = local.billing_account
    org_id = local.org_id
    auto_create_network = false
}

resource "google_project_service" "host" {
    project = google_project.automation-kube.number
    service = local.projects_api
}

resource "google_project_service" "service" {
    project = google_project.kube-pruthvi.number
    service = local.projects_api
}