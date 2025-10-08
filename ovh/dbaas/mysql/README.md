# OVH mysql DBaaS

Create a OVH managed database instance (mysql engine only).

<!-- don't remove this line used to keep some space before auto generated docs -->
<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | ~> 1.3 |
| <a name="requirement_ovh"></a> [ovh](#requirement\_ovh) | ~> 0.26.0 |
| <a name="requirement_time"></a> [time](#requirement\_time) | ~> 0.9.1 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_ovh"></a> [ovh](#provider\_ovh) | ~> 0.26.0 |
| <a name="provider_time"></a> [time](#provider\_time) | ~> 0.9.1 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [ovh_cloud_project_database.instance](https://registry.terraform.io/providers/ovh/ovh/latest/docs/resources/cloud_project_database) | resource |
| [ovh_cloud_project_database_database.database](https://registry.terraform.io/providers/ovh/ovh/latest/docs/resources/cloud_project_database_database) | resource |
| [ovh_cloud_project_database_ip_restriction.iprestriction](https://registry.terraform.io/providers/ovh/ovh/latest/docs/resources/cloud_project_database_ip_restriction) | resource |
| [ovh_cloud_project_database_user.user](https://registry.terraform.io/providers/ovh/ovh/latest/docs/resources/cloud_project_database_user) | resource |
| [time_static.last_update](https://registry.terraform.io/providers/hashicorp/time/latest/docs/resources/static) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_cloud_project_id"></a> [cloud\_project\_id](#input\_cloud\_project\_id) | The OVH public cloud project id | `string` | n/a | yes |
| <a name="input_customer"></a> [customer](#input\_customer) | Customer for the current deployment | `string` | `""` | no |
| <a name="input_mysql_allowed_ips"></a> [mysql\_allowed\_ips](#input\_mysql\_allowed\_ips) | IPs cidrs allowed to access the database | `list(string)` | `null` | no |
| <a name="input_mysql_databases"></a> [mysql\_databases](#input\_mysql\_databases) | Name of the databases to create | `list(string)` | `[]` | no |
| <a name="input_mysql_flavor"></a> [mysql\_flavor](#input\_mysql\_flavor) | Flavor of the database | `string` | `"db1-4"` | no |
| <a name="input_mysql_nodes"></a> [mysql\_nodes](#input\_mysql\_nodes) | Nodes of the database | <pre>list(object({<br>    region     = string<br>    network_id = string<br>    subnet_id  = string<br>  }))</pre> | <pre>[<br>  {<br>    "network_id": null,<br>    "region": "GRA5",<br>    "subnet_id": null<br>  }<br>]</pre> | no |
| <a name="input_mysql_plan"></a> [mysql\_plan](#input\_mysql\_plan) | Plan of the database | `string` | `"essential"` | no |
| <a name="input_mysql_users"></a> [mysql\_users](#input\_mysql\_users) | Users of the database | <pre>list(object({<br>    name = string<br>  }))</pre> | <pre>[<br>  {<br>    "name": "root"<br>  }<br>]</pre> | no |
| <a name="input_mysql_version"></a> [mysql\_version](#input\_mysql\_version) | Version of the database | `string` | `"14"` | no |
| <a name="input_name"></a> [name](#input\_name) | Name to be used on all the resources as identifier | `string` | n/a | yes |
| <a name="input_tags"></a> [tags](#input\_tags) | Default tags to add to resources | `map(any)` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_endpoints"></a> [endpoints](#output\_endpoints) | n/a |
| <a name="output_id"></a> [id](#output\_id) | n/a |
| <a name="output_nodes"></a> [nodes](#output\_nodes) | n/a |
| <a name="output_status"></a> [status](#output\_status) | n/a |
| <a name="output_users"></a> [users](#output\_users) | n/a |
<!-- END_TF_DOCS -->
