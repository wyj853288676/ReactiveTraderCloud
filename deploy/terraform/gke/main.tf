data "google_compute_network" "vpc" {
  name = "${var.project_id}-vpc"
  project = var.project_id
}

data "google_compute_subnetwork" "subnet" {
  name = "${var.project_id}-subnet"
  project = var.project_id
  region = var.region
}

module "gke" {
  source                     = "terraform-google-modules/kubernetes-engine/google"
  project_id                 = var.project_id
  name                       = var.cluster_name
  region                     = var.region
  zones                      = ["europe-west2-a", "europe-west2-b", "europe-west2-c"]
  network                    = data.google_compute_network.vpc.name
  subnetwork                 = data.google_compute_subnetwork.subnet.name
  ip_range_pods              = data.google_compute_subnetwork.subnet.secondary_ip_range[0].range_name
  ip_range_services          = data.google_compute_subnetwork.subnet.secondary_ip_range[1].range_name
  http_load_balancing        = false
  horizontal_pod_autoscaling = true
  network_policy             = true
  basic_auth_username        = "kube-user"
  basic_auth_password        = var.gke_password
     
  node_pools = [
    {
      name               = "default-node-pool"
      machine_type       = "e2-small"
      node_locations     = "europe-west2-b,europe-west2-c"
      min_count          = 1
      max_count          = 5
      local_ssd_count    = 0
      disk_size_gb       = 30
      disk_type          = "pd-standard"
      image_type         = "COS"
      auto_repair        = true
      auto_upgrade       = true
      service_account    = "${var.service_account}@${var.project_id}.iam.gserviceaccount.com"
      preemptible        = false
    }
  ]
}
