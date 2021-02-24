variable "image_tag" {
  description = "An image tag to be used for containers"
  default = "v1.7.0-44-g9c96758b4"
}

variable "namespace" {
  description = "Namespace where resources are deployed"
  default = "sandbox"
}
