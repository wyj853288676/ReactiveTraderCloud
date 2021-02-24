variable "project_id" {
  description = "Name of the gcp project"
}

variable "deployer_service_account" {
  default     = "rtc-deployment"
  description = "Service account for deployments within GKE"
}

variable "dns_service_account" {
  default     = "dns-admin"
  description = "Service account for DNS manaagement"
}
