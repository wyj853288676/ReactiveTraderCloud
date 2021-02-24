# terraform

## Description

Contains terraform templates for infrastructure and GKE cluster provisioning, and kubernetes management via [Terraform's kubernetes provider](1).

Provisioning is split in the *infra*, *gke* and *kubernetes* directories. Each directory has its own remote state as they are resources that should be managed separately.

### infra

Covers provisioning of infrastructure resources: VPC, DNS zones, IAM (service accounts).

### gke

Covers provisinoning and configuration of the Google Kubernetes Engine (GKE) cluster.

All cluster manipulation should be done in this module.


### kubernetes

*NOTE: this part is a work in progress.*

This directory holds terraform templates for kubernetes management using [Terraform kubernetes provider](1).

It covers management of anything _within_ the cluster.

CI/CD automation (like those enabled by Github Actions) should be scoped **only** to this directory.

## Deployment

Before deploying, you can inspect the proposed changes by running a `terraform plan`.

    cd ./deploy/terraform/gke
    terraform plan

To apply the templates:

    terraform apply

Terraform will prompt for a confirmation before applying changes.

[1]: https://registry.terraform.io/providers/hashicorp/kubernetes/latest/docs 
