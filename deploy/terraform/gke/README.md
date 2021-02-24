## Requirements

| Name | Version |
|------|---------|
| terraform | 0.14.7 |
| google | ~> 3.58 |

## Providers

| Name | Version |
|------|---------|
| google | ~> 3.58 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| gke | terraform-google-modules/kubernetes-engine/google |  |

## Resources

| Name |
|------|
| [google_compute_network](https://registry.terraform.io/providers/hashicorp/google/3.58/docs/data-sources/compute_network) |
| [google_compute_subnetwork](https://registry.terraform.io/providers/hashicorp/google/3.58/docs/data-sources/compute_subnetwork) |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| cluster\_name | Name of the GKE cluster | `any` | n/a | yes |
| gke\_password | Password for the GKE cluster | `any` | n/a | yes |
| project\_id | Name of the GCP project | `any` | n/a | yes |
| region | The region where resources are deployed | `any` | n/a | yes |
| service\_account | Service account for deploying in the GKE cluster | `any` | n/a | yes |

## Outputs

No output.
