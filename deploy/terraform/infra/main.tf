krovider "google" {
  project = var.project_id
  region  = var.region
}

module "vpc" {
  source     = "./vpc/"
  region     = var.region
  project_id = var.project_id
}

module "dns" {
  source     = "./dns/"
  project_id = var.project_id
}

module "service_account" {
  source     = "./iam"
  project_id = var.project_id
}
