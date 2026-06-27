# Azure Mongo Cluster Module

This module manages Azure Mongo Cluster resources.

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
| [azurerm_mongo_cluster.main](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/mongo_cluster) | resource |
| [azurerm_user_assigned_identity.main](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/user_assigned_identity) | resource |
| [random_password.admin](https://registry.terraform.io/providers/hashicorp/random/latest/docs/resources/password) | resource |
| [time_static.last_update](https://registry.terraform.io/providers/hashicorp/time/latest/docs/resources/static) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_administrator_username"></a> [administrator\_username](#input\_administrator\_username) | Administrator username for the MongoDB cluster | `string` | n/a | yes |
| <a name="input_authentication_methods"></a> [authentication\_methods](#input\_authentication\_methods) | Authentication methods for the MongoDB cluster Possible values are NativeAuth and MicrosoftEntraID | `list(string)` | n/a | yes |
| <a name="input_compute_tier"></a> [compute\_tier](#input\_compute\_tier) | Compute tier for the MongoDB cluster (e.g., M30, M40, M50) | `string` | `"M30"` | no |
| <a name="input_customer"></a> [customer](#input\_customer) | Customer name applied to the MongoDB cluster | `string` | `""` | no |
| <a name="input_environment"></a> [environment](#input\_environment) | Environment applied to the MongoDB cluster | `string` | `""` | no |
| <a name="input_high_availability_mode"></a> [high\_availability\_mode](#input\_high\_availability\_mode) | High availability mode for the MongoDB cluster (Disabled, ZoneRedundantPreferred) | `string` | `"ZoneRedundantPreferred"` | no |
| <a name="input_location"></a> [location](#input\_location) | Azure region for the MongoDB cluster | `string` | n/a | yes |
| <a name="input_mongodb_version"></a> [mongodb\_version](#input\_mongodb\_version) | MongoDB server version (5.0, 6.0, 7.0, 8.0) | `string` | n/a | yes |
| <a name="input_name"></a> [name](#input\_name) | Name of the MongoDB cluster | `string` | n/a | yes |
| <a name="input_public_network_access"></a> [public\_network\_access](#input\_public\_network\_access) | Enable or disable public network access (Enabled, Disabled) | `string` | `"Disabled"` | no |
| <a name="input_resource_group_name"></a> [resource\_group\_name](#input\_resource\_group\_name) | Name of the resource group | `string` | n/a | yes |
| <a name="input_shard_count"></a> [shard\_count](#input\_shard\_count) | Number of shards for the MongoDB cluster | `number` | `1` | no |
| <a name="input_storage_size_in_gb"></a> [storage\_size\_in\_gb](#input\_storage\_size\_in\_gb) | Storage size in GB for the MongoDB cluster | `number` | `32` | no |
| <a name="input_storage_type"></a> [storage\_type](#input\_storage\_type) | Storage type for the MongoDB cluster. Possible values are PremiumSSD and PremiumSSDv2 | `string` | `"PremiumSSD"` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | Tags applied to the MongoDB cluster | `map(any)` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_administrator_password"></a> [administrator\_password](#output\_administrator\_password) | The administrator password for the MongoDB cluster |
| <a name="output_administrator_username"></a> [administrator\_username](#output\_administrator\_username) | The administrator username for the MongoDB cluster |
| <a name="output_id"></a> [id](#output\_id) | The ID of the MongoDB cluster |
| <a name="output_name"></a> [name](#output\_name) | The name of the MongoDB cluster |
<!-- END_TF_DOCS -->
