terraform {
  required_version = "0.14.7"

  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 3.58"
    }
  }

  backend "gcs" {
    bucket  = "rtc-terraform-state"
    prefix  = "gke"
  }
}
