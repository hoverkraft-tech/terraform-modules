# Azure PostgreSQL Databases Module

This module manages Azure PostgreSQL Databases resources.

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
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | >= 4.40.0, <5.0.0 |
| <a name="provider_time"></a> [time](#provider\_time) | ~> 0.13.1 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [azurerm_postgresql_flexible_server_database.main](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/postgresql_flexible_server_database) | resource |
| [time_static.last_update](https://registry.terraform.io/providers/hashicorp/time/latest/docs/resources/static) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_databases"></a> [databases](#input\_databases) | List of PostgreSQL databases to create | <pre>list(object({<br>    name      = string<br>    charset   = optional(string, "UTF8")<br>    collation = optional(string, "en_US.utf8")<br>  }))</pre> | `[]` | no |
| <a name="input_server_id"></a> [server\_id](#input\_server\_id) | The ID of the PostgreSQL server on which to create the databases | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_ids"></a> [ids](#output\_ids) | List of IDs of the created PostgreSQL databases |
<!-- END_TF_DOCS -->
