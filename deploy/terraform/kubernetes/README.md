## Requirements

| Name | Version |
|------|---------|
| terraform | = 0.14.7 |
| google | ~> 3.58 |
| kubernetes | ~> 2.0.2 |

## Providers

| Name | Version |
|------|---------|
| google | ~> 3.58 |
| kubernetes | ~> 2.0.2 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| namespace_sandbox | ./modules/environment |  |

## Resources

| Name |
|------|
| [google_client_config](https://registry.terraform.io/providers/hashicorp/google/3.58/docs/data-sources/client_config) |
| [google_container_cluster](https://registry.terraform.io/providers/hashicorp/google/3.58/docs/data-sources/container_cluster) |
| [kubernetes_namespace](https://registry.terraform.io/providers/hashicorp/kubernetes/2.0.2/docs/resources/namespace) |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| cluster\_name | Name of the GKE cluster | `any` | n/a | yes |
| project\_id | Name of the GCP project | `any` | n/a | yes |
| region | The region where resources are deployed | `any` | n/a | yes |

## Outputs

No output.
