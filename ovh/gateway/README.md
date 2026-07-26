# OVH PCI gateway module

Terraform module to create an OVH PCI gateway

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | ~> 1.3 |
| <a name="requirement_ovh"></a> [ovh](#requirement\_ovh) | ~> 2.1 |
| <a name="requirement_time"></a> [time](#requirement\_time) | ~> 0.13.1 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_ovh"></a> [ovh](#provider\_ovh) | ~> 2.1 |
| <a name="provider_time"></a> [time](#provider\_time) | ~> 0.13.1 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [ovh_cloud_project_gateway.gateway](https://registry.terraform.io/providers/ovh/ovh/latest/docs/resources/cloud_project_gateway) | resource |
| [time_static.last_update](https://registry.terraform.io/providers/hashicorp/time/latest/docs/resources/static) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_cloud_project_id"></a> [cloud\_project\_id](#input\_cloud\_project\_id) | The OVH public cloud project id | `string` | n/a | yes |
| <a name="input_customer"></a> [customer](#input\_customer) | Customer for the current deployment | `string` | `""` | no |
| <a name="input_model"></a> [model](#input\_model) | Model of the gateway | `string` | n/a | yes |
| <a name="input_name"></a> [name](#input\_name) | Name applied to this instance | `string` | `""` | no |
| <a name="input_network_uuid"></a> [network\_uuid](#input\_network\_uuid) | UUID of the private network | `string` | n/a | yes |
| <a name="input_region"></a> [region](#input\_region) | Region of the gateway | `string` | n/a | yes |
| <a name="input_subnet_id"></a> [subnet\_id](#input\_subnet\_id) | ID of the subnet | `string` | n/a | yes |
| <a name="input_tags"></a> [tags](#input\_tags) | Default tags to add to resources | `map(any)` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_id"></a> [id](#output\_id) | n/a |
<!-- END_TF_DOCS -->
