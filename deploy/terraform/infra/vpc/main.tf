resource "google_compute_network" "vpc" {
  name                    = "${var.project_id}-vpc"
  auto_create_subnetworks = "false"
}

resource "google_compute_subnetwork" "subnet" {
  name          = "${var.project_id}-subnet"
  region        = var.region
  network       = google_compute_network.vpc.name
  ip_cidr_range = "10.250.0.0/20"

  secondary_ip_range {
    range_name    = "${var.project_id}-subnet-secondary-range-services"
    ip_cidr_range = "10.250.16.0/20"
  }

  secondary_ip_range {
    range_name    = "${var.project_id}-subnet-secondary-range-pods"
    ip_cidr_range = "10.250.32.0/20"
  }

}

resource "google_compute_firewall" "firewall" {
  name    = "${google_compute_network.vpc.name}-firewall"
  network = google_compute_network.vpc.name

  allow {
    protocol = "icmp"
  }

  allow {
    protocol = "tcp"
    ports    = ["80", "443"]
  }
}
