# Azure PostgreSQL Module

This module manages Azure PostgreSQL resources.

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | ~> 1.3 |
| <a name="requirement_azurerm"></a> [azurerm](#requirement\_azurerm) | >= 4.40.0, <5.0.0 |
| <a name="requirement_random"></a> [random](#requirement\_random) | ~> 3.6 |
| <a name="requirement_time"></a> [time](#requirement\_time) | ~> 0.13.1 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | >= 4.40.0, <5.0.0 |
| <a name="provider_random"></a> [random](#provider\_random) | ~> 3.6 |
| <a name="provider_time"></a> [time](#provider\_time) | ~> 0.13.1 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [azurerm_postgresql_flexible_server.main](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/postgresql_flexible_server) | resource |
| [azurerm_postgresql_flexible_server_active_directory_administrator.main](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/postgresql_flexible_server_active_directory_administrator) | resource |
| [azurerm_postgresql_flexible_server_configuration.main](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/postgresql_flexible_server_configuration) | resource |
| [azurerm_user_assigned_identity.main](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/user_assigned_identity) | resource |
| [random_password.admin](https://registry.terraform.io/providers/hashicorp/random/latest/docs/resources/password) | resource |
| [time_static.last_update](https://registry.terraform.io/providers/hashicorp/time/latest/docs/resources/static) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_active_directory_auth_enabled"></a> [active\_directory\_auth\_enabled](#input\_active\_directory\_auth\_enabled) | Enable Azure Active Directory authentication | `bool` | `true` | no |
| <a name="input_administrator_login"></a> [administrator\_login](#input\_administrator\_login) | Administrator username (not used when active\_directory\_auth\_enabled is true) | `string` | `null` | no |
| <a name="input_administrator_password"></a> [administrator\_password](#input\_administrator\_password) | Administrator password (not used when active\_directory\_auth\_enabled is true) | `string` | `null` | no |
| <a name="input_backup_retention_days"></a> [backup\_retention\_days](#input\_backup\_retention\_days) | Backup retention period in days | `number` | `7` | no |
| <a name="input_create_mode"></a> [create\_mode](#input\_create\_mode) | Create mode for the server | `string` | `"Default"` | no |
| <a name="input_customer"></a> [customer](#input\_customer) | Customer name for tagging | `string` | n/a | yes |
| <a name="input_entra_admin_name"></a> [entra\_admin\_name](#input\_entra\_admin\_name) | Name of the Entra admin | `string` | `null` | no |
| <a name="input_entra_admin_object_id"></a> [entra\_admin\_object\_id](#input\_entra\_admin\_object\_id) | Object ID of the Entra admin | `string` | `null` | no |
| <a name="input_entra_admin_type"></a> [entra\_admin\_type](#input\_entra\_admin\_type) | Type of the Entra admin principal | `string` | `"User"` | no |
| <a name="input_environment"></a> [environment](#input\_environment) | Environment name for tagging | `string` | n/a | yes |
| <a name="input_geo_redundant_backup_enabled"></a> [geo\_redundant\_backup\_enabled](#input\_geo\_redundant\_backup\_enabled) | Enable geo-redundant backups for PostgreSQL Flexible Server | `bool` | `false` | no |
| <a name="input_high_availability_enabled"></a> [high\_availability\_enabled](#input\_high\_availability\_enabled) | Enable high availability for PostgreSQL Flexible Server | `bool` | `false` | no |
| <a name="input_high_availability_mode"></a> [high\_availability\_mode](#input\_high\_availability\_mode) | High availability mode. Possible values are SameZone and ZoneRedundant | `string` | `"ZoneRedundant"` | no |
| <a name="input_high_availability_standby_zone"></a> [high\_availability\_standby\_zone](#input\_high\_availability\_standby\_zone) | Availability zone for the standby server when high availability is enabled | `string` | `null` | no |
| <a name="input_location"></a> [location](#input\_location) | Azure region for the PostgreSQL server | `string` | n/a | yes |
| <a name="input_name"></a> [name](#input\_name) | Name of the PostgreSQL server | `string` | n/a | yes |
| <a name="input_postgresql_version"></a> [postgresql\_version](#input\_postgresql\_version) | PostgreSQL version | `string` | `"16"` | no |
| <a name="input_private_dns_zone_id"></a> [private\_dns\_zone\_id](#input\_private\_dns\_zone\_id) | Private DNS zone ID | `string` | `null` | no |
| <a name="input_public_network_access_enabled"></a> [public\_network\_access\_enabled](#input\_public\_network\_access\_enabled) | Enable public network access | `bool` | `false` | no |
| <a name="input_resource_group_name"></a> [resource\_group\_name](#input\_resource\_group\_name) | Name of the resource group | `string` | n/a | yes |
| <a name="input_server_configurations"></a> [server\_configurations](#input\_server\_configurations) | List of PostgreSQL server configurations to apply | <pre>list(object({<br>    name  = string<br>    value = string<br>  }))</pre> | `[]` | no |
| <a name="input_sku_name"></a> [sku\_name](#input\_sku\_name) | SKU name for the PostgreSQL server | `string` | `"B_Standard_B1ms"` | no |
| <a name="input_storage_mb"></a> [storage\_mb](#input\_storage\_mb) | Storage size in MB | `number` | `32768` | no |
| <a name="input_storage_tier"></a> [storage\_tier](#input\_storage\_tier) | The storage tier for the PostgreSQL Flexible Server. Possible values are P4, P6, P10, P15, P20, P30, P40, P50, P60, P70, and P80. | `string` | `"P4"` | no |
| <a name="input_subnet_id"></a> [subnet\_id](#input\_subnet\_id) | Subnet ID for private network integration | `string` | `null` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | Additional tags to apply to resources | `map(string)` | `{}` | no |
| <a name="input_tenant_id"></a> [tenant\_id](#input\_tenant\_id) | Azure AD tenant ID | `string` | `null` | no |
| <a name="input_zone"></a> [zone](#input\_zone) | Availability zone | `string` | `null` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_admin_password"></a> [admin\_password](#output\_admin\_password) | The generated administrator password |
| <a name="output_administrator_login"></a> [administrator\_login](#output\_administrator\_login) | The administrator login name for the PostgreSQL flexible server |
| <a name="output_fqdn"></a> [fqdn](#output\_fqdn) | The fully qualified domain name of the PostgreSQL flexible server |
| <a name="output_id"></a> [id](#output\_id) | The ID of the created PostgreSQL flexible server |
| <a name="output_name"></a> [name](#output\_name) | The name of the created PostgreSQL flexible server |
<!-- END_TF_DOCS -->
