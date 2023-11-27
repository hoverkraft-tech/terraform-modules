# OVH mysql DBaaS

Create a OVH public cloud instance instance (through openstack api).
<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | ~> 1.3 |
| <a name="requirement_openstack"></a> [openstack](#requirement\_openstack) | ~> 1.49.0 |
| <a name="requirement_time"></a> [time](#requirement\_time) | ~> 0.9.1 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_openstack"></a> [openstack](#provider\_openstack) | ~> 1.49.0 |
| <a name="provider_time"></a> [time](#provider\_time) | ~> 0.9.1 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [openstack_compute_instance_v2.instance](https://registry.terraform.io/providers/terraform-provider-openstack/openstack/latest/docs/resources/compute_instance_v2) | resource |
| [time_static.last_update](https://registry.terraform.io/providers/hashicorp/time/latest/docs/resources/static) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_availability_zone"></a> [availability\_zone](#input\_availability\_zone) | Availability zone to use for the instance | `string` | `"nova"` | no |
| <a name="input_availability_zone_hints"></a> [availability\_zone\_hints](#input\_availability\_zone\_hints) | Availability zone hints to use for the instance | `string` | `null` | no |
| <a name="input_block_devices"></a> [block\_devices](#input\_block\_devices) | Block devices to use for the instance | `list(any)` | `[]` | no |
| <a name="input_customer"></a> [customer](#input\_customer) | Customer for the current deployment | `string` | `""` | no |
| <a name="input_environment"></a> [environment](#input\_environment) | Environment for the current deployment | `string` | `""` | no |
| <a name="input_flavor_id"></a> [flavor\_id](#input\_flavor\_id) | Flavor ID to use for the instance (default: b2-7 on GRA9) | `string` | `"906e8259-0340-4856-95b5-4ea2d26fe377"` | no |
| <a name="input_image_id"></a> [image\_id](#input\_image\_id) | Image ID to use for the instance (default: Ubuntu 22.04 UEFI on GRA9) | `string` | `"b627c305-6945-47b5-8b69-c8d436f340a3"` | no |
| <a name="input_name"></a> [name](#input\_name) | Name to be used on all the resources as identifier | `string` | n/a | yes |
| <a name="input_network_mode"></a> [network\_mode](#input\_network\_mode) | Network mode to use for the instance | `string` | `null` | no |
| <a name="input_networks"></a> [networks](#input\_networks) | Network to use for the instance | `list(any)` | `[]` | no |
| <a name="input_personalities"></a> [personalities](#input\_personalities) | Personalities to use for the instance | `list(any)` | `[]` | no |
| <a name="input_region"></a> [region](#input\_region) | Region to use for the instance | `string` | n/a | yes |
| <a name="input_scheduler_hints"></a> [scheduler\_hints](#input\_scheduler\_hints) | Scheduler hints to use for the instance | `list(any)` | `[]` | no |
| <a name="input_security_groups"></a> [security\_groups](#input\_security\_groups) | Security groups to use for the instance | `list(string)` | `[]` | no |
| <a name="input_ssh_keypair"></a> [ssh\_keypair](#input\_ssh\_keypair) | SSH keypair to use for the instance | `string` | n/a | yes |
| <a name="input_tags"></a> [tags](#input\_tags) | Default tags to add to resources | `map(any)` | `{}` | no |
| <a name="input_user_data"></a> [user\_data](#input\_user\_data) | User data to use for the instance | `string` | `""` | no |
| <a name="input_vendor_options"></a> [vendor\_options](#input\_vendor\_options) | Vendor options to use for the instance | `list(any)` | `[]` | no |

## Outputs

No outputs.
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
