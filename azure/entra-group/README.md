# Azure Entra Group

This module manages Azure Entra Group resources.

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | ~> 1.3 |
| <a name="requirement_azuread"></a> [azuread](#requirement\_azuread) | >= 3.5.0, <4.0.0 |
| <a name="requirement_time"></a> [time](#requirement\_time) | ~> 0.13.1 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azuread"></a> [azuread](#provider\_azuread) | 3.5.0 |
| <a name="provider_time"></a> [time](#provider\_time) | 0.13.1 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [azuread_group.main](https://registry.terraform.io/providers/hashicorp/azuread/latest/docs/resources/group) | resource |
| [time_static.last_update](https://registry.terraform.io/providers/hashicorp/time/latest/docs/resources/static) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_customer"></a> [customer](#input\_customer) | Customer applied to this Entra group | `string` | `""` | no |
| <a name="input_description"></a> [description](#input\_description) | Description for the Entra group | `string` | `null` | no |
| <a name="input_environment"></a> [environment](#input\_environment) | Environment applied to this Entra group | `string` | `""` | no |
| <a name="input_members"></a> [members](#input\_members) | List of members for the Entra group | `list(any)` | `[]` | no |
| <a name="input_name"></a> [name](#input\_name) | Name applied to this Entra group | `string` | `"myresourcegroup"` | no |
| <a name="input_owners"></a> [owners](#input\_owners) | List of owners for the Entra group | `list(any)` | `[]` | no |
| <a name="input_security_enabled"></a> [security\_enabled](#input\_security\_enabled) | Whether the group is security enabled | `bool` | `true` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | Tags applied to this Entra group | `map(any)` | `{}` | no |
| <a name="input_theme"></a> [theme](#input\_theme) | Theme for the Entra group | `string` | `null` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_object_id"></a> [object\_id](#output\_object\_id) | The ID of the created resource group |
<!-- END_TF_DOCS -->
