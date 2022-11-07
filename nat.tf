resource "google_compute_router_nat" "mist_nat" {
    name = "nat"
    project = local.host_project_id
    region = local.region
    nat_ip_allocate_option = "AUTO_ONLY"
    source_subnetwork_ip_ranges_tp_nat = "ALL_SUBNETWORKS_ALL_IP_RANGES"

    depends_on = [google_compute_subnetwork.private]
}