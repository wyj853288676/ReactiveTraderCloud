variable "project_id" {
  description = "Name of the GCP project"
}

variable "region" {
  description = "Name of the vpc"
}

variable "cluster_name" {
  description = "Name of the GKE cluster"
}

variable "gke_password" {
  default     = ""
  description = "Password for the GKE cluster"
}
