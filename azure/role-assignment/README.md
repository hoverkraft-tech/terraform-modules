# Azure Role Assignment

This module manages Azure Role Assignment resources.

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | ~> 1.3 |
| <a name="requirement_azurerm"></a> [azurerm](#requirement\_azurerm) | >= 4.40.0, <5.0.0 |
| <a name="requirement_time"></a> [time](#requirement\_time) | ~> 0.13.1 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | 4.45.1 |
| <a name="provider_time"></a> [time](#provider\_time) | 0.13.1 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [azurerm_role_assignment.main](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/role_assignment) | resource |
| [time_static.last_update](https://registry.terraform.io/providers/hashicorp/time/latest/docs/resources/static) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_customer"></a> [customer](#input\_customer) | Customer applied to this role assignment | `string` | `""` | no |
| <a name="input_environment"></a> [environment](#input\_environment) | Environment applied to this role assignment | `string` | `""` | no |
| <a name="input_name"></a> [name](#input\_name) | Name applied to this role assignment | `string` | `"myresourcegroup"` | no |
| <a name="input_principal_id"></a> [principal\_id](#input\_principal\_id) | The ID of the Principal (User, Group or Service Principal) to assign the Role Definition to | `string` | n/a | yes |
| <a name="input_role_definition_name"></a> [role\_definition\_name](#input\_role\_definition\_name) | The name of a built-in Role. Changing this forces a new resource to be created | `string` | n/a | yes |
| <a name="input_scope"></a> [scope](#input\_scope) | The scope at which the Role Assignment applies to | `string` | n/a | yes |
| <a name="input_tags"></a> [tags](#input\_tags) | Tags applied to this role assignment | `map(any)` | `{}` | no |

## Outputs

No outputs.
<!-- END_TF_DOCS -->
