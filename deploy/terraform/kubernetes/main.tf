provider "google" {
  project = var.project_id  
  zone = var.region
}

data "google_client_config" "default" {
}

data "google_container_cluster" "cluster" {
  name = var.cluster_name
  project = var.project_id
}

locals {
  cluster_endpoint = data.google_container_cluster.cluster.endpoint
  cluster_ca_certificate = base64decode(data.google_container_cluster.cluster.master_auth.0.cluster_ca_certificate)
}

provider "kubernetes" {
  host = local.cluster_endpoint
  cluster_ca_certificate = local.cluster_ca_certificate
  token = data.google_client_config.default.access_token
}

resource "kubernetes_namespace" "sandbox" {
  metadata {
    name = "sandbox"
  }
}

resource "kubernetes_namespace" "dev" {
  metadata {
    name = "dev"
  }
}

resource "kubernetes_namespace" "uat" {
  metadata {
    name = "uat"
  }
}

resource "kubernetes_namespace" "demo" {
  metadata {
    name = "demo"
  }
}

module "namespace_sandbox" {
  source = "./modules/environment"
  namespace = "sandbox"
}

# add other namespaces as individual modules for deployments
