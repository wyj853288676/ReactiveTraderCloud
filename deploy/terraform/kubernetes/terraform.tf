terraform {
  required_version = "= 0.14.7"

  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 3.58"
    }
    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = "~> 2.0.2"
    }
  }

  backend "gcs" {
    bucket  = "rtc-terraform-state"
    prefix  = "kubernetes"
  }
}
