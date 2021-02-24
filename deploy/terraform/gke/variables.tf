variable "project_id" {
  description = "Name of the GCP project"
}

variable "region" {
  description = "The region where resources are deployed"
}

variable "cluster_name" {
  description = "Name of the GKE cluster"
}

variable "gke_password" {
  description = "Password for the GKE cluster"
}

variable "service_account" {
  description = "Service account for deploying in the GKE cluster"
}
