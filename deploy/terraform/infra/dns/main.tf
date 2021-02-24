resource "google_dns_managed_zone" "adaptive-cluster-zone" {
  name        = "adaptive-cluster-alt-zone"
  dns_name    = "adaptivecluster-alt.com."
  description = "Adaptive's cluster zone"

  visibility = "public"
  project    = var.project_id
}
