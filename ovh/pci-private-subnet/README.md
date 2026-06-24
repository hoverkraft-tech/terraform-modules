# OVH PCI private subnet

Create a subnet in OVH PCI (openstack)
<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | ~> 1.3 |
| <a name="requirement_ovh"></a> [ovh](#requirement\_ovh) | ~> 2.1 |
| <a name="requirement_time"></a> [time](#requirement\_time) | ~> 0.14.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_ovh"></a> [ovh](#provider\_ovh) | ~> 2.1 |
| <a name="provider_time"></a> [time](#provider\_time) | ~> 0.14.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [ovh_cloud_project_network_private_subnet.subnet](https://registry.terraform.io/providers/ovh/ovh/latest/docs/resources/cloud_project_network_private_subnet) | resource |
| [time_static.last_update](https://registry.terraform.io/providers/hashicorp/time/latest/docs/resources/static) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_cloud_project_id"></a> [cloud\_project\_id](#input\_cloud\_project\_id) | OVH service name | `string` | n/a | yes |
| <a name="input_customer"></a> [customer](#input\_customer) | Customer applied to this instance | `string` | `""` | no |
| <a name="input_dhcp"></a> [dhcp](#input\_dhcp) | Enable DHCP | `bool` | `true` | no |
| <a name="input_end"></a> [end](#input\_end) | Last ip for this region | `string` | n/a | yes |
| <a name="input_name"></a> [name](#input\_name) | Name applied to this instance | `string` | `""` | no |
| <a name="input_network"></a> [network](#input\_network) | Global network in CIDR format | `string` | n/a | yes |
| <a name="input_network_id"></a> [network\_id](#input\_network\_id) | ID of the private network | `string` | n/a | yes |
| <a name="input_no_gateway"></a> [no\_gateway](#input\_no\_gateway) | Set to true if you don't want to set a default gateway IP | `bool` | `false` | no |
| <a name="input_region"></a> [region](#input\_region) | OVH PCI region where the subnet will exist | `string` | n/a | yes |
| <a name="input_start"></a> [start](#input\_start) | First ip for this region | `string` | n/a | yes |
| <a name="input_tags"></a> [tags](#input\_tags) | Tags applied to this instance | `map(string)` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_gateway_ip"></a> [gateway\_ip](#output\_gateway\_ip) | n/a |
| <a name="output_id"></a> [id](#output\_id) | n/a |
| <a name="output_network_id"></a> [network\_id](#output\_network\_id) | n/a |
<!-- END_TF_DOCS -->
