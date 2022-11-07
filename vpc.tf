resource "google_compute_network" "main" {
    name = "main"
    project = google_compute_shared_vpc_host_project.host.project
    auto_create_subnetworks = false
    routing_mode = "REGIONAL"
    mtu = 1500
}

resoruce "google_compute_subnetwork" "private" {
    name = "private"
    project = google_compute_shared_vpc_host_project.host.project
    ip_cidr_range = "192.168.13.0/20"
    region = local.region
    network = google_compute_network.main.self_link
    private_ip_google_access = true

    #secondary_ip_ranges {
    #   range_name = "services-ip-range"
    #   ip_cidr_range = "192.168.10.0/24"
    $ }
    # secondary_ip_ranges {
    #   range_name = "services-ip-range"
    #   ip_cidr_range = "192.168.11.0/24"
    # }
    dynamic "secondary_ip_range" {
        for_each = local.secondary_ip_ranges

        content {
            range_name = secondary_ip_range.key
            ip_cidr_range = secondary_ip_range.value
        }
    }
}