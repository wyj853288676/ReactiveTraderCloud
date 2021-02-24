## Requirements

| Name | Version |
|------|---------|
| terraform | 0.14.7 |
| google | ~> 3.58 |

## Providers

No provider.

## Modules

| Name | Source | Version |
|------|--------|---------|
| dns | ./dns/ |  |
| service_account | ./iam |  |
| vpc | ./vpc/ |  |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| cluster\_name | Name of the GKE cluster | `any` | n/a | yes |
| gke\_password | Password for the GKE cluster | `string` | `""` | no |
| project\_id | Name of the GCP project | `any` | n/a | yes |
| region | Name of the vpc | `any` | n/a | yes |

## Outputs

No output.
