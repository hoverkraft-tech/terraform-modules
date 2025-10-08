# OVH public cloud infrastructure private network

This module is creating a private network between your instances.
It will be linked to an existing vrack, that you must create manually before using this module.

## Considerations

To avoid terraform errors with state and so on it's simplier to create the vrack manually and later assign it your public cloud project.
Also remember that a project can't be detached from vrack without calling OVH support which can cause a huge loss of time.
<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | ~> 1.3 |
| <a name="requirement_openstack"></a> [openstack](#requirement\_openstack) | ~> 1.49.0 |
| <a name="requirement_ovh"></a> [ovh](#requirement\_ovh) | ~> 0.24.0 |
| <a name="requirement_time"></a> [time](#requirement\_time) | ~> 0.9.1 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_ovh"></a> [ovh](#provider\_ovh) | ~> 0.24.0 |
| <a name="provider_time"></a> [time](#provider\_time) | ~> 0.9.1 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [ovh_cloud_project_network_private.vrack](https://registry.terraform.io/providers/ovh/ovh/latest/docs/resources/cloud_project_network_private) | resource |
| [time_static.last_update](https://registry.terraform.io/providers/hashicorp/time/latest/docs/resources/static) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_customer"></a> [customer](#input\_customer) | Customer for the current deployment | `string` | `""` | no |
| <a name="input_name"></a> [name](#input\_name) | Name applied to this instance | `string` | `""` | no |
| <a name="input_project_id"></a> [project\_id](#input\_project\_id) | The id of pci project | `string` | n/a | yes |
| <a name="input_regions"></a> [regions](#input\_regions) | array of OVH pci regions where the network will exists | `list(any)` | `null` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | Default tags to add to resources | `map(any)` | `{}` | no |
| <a name="input_vlan_id"></a> [vlan\_id](#input\_vlan\_id) | The id of the vlan assigned to the vrack | `number` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_id"></a> [id](#output\_id) | n/a |
| <a name="output_name"></a> [name](#output\_name) | n/a |
| <a name="output_uuid"></a> [uuid](#output\_uuid) | n/a |
<!-- END_TF_DOCS -->
