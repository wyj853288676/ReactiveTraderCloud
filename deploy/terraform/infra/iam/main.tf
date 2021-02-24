resource "google_service_account" "deployer-service-account" {
  account_id   = var.deployer_service_account
  display_name = "Reactive Trader Cloud deployment service account"
  project      = var.project_id
}

resource "google_project_iam_member" "iam-member-deployer-service-account" {
  role    = "roles/container.developer"
  member  = "serviceAccount:${google_service_account.deployer-service-account.email}"
  project = var.project_id
}

resource "google_service_account" "dns-service-account" {
  account_id   = var.dns_service_account
  display_name = "Managed DNS zone service account"
  project      = var.project_id
}

resource "google_project_iam_member" "iam-member-dns-service-account" {
  role    = "roles/dns.admin"
  member  = "serviceAccount:${google_service_account.dns-service-account.email}"
  project = var.project_id
}
