# RDS mysql cluster

Create an RDS cluster in AWS with any number of instances.

- Supports only Aurora MySQL
- Supports serverless clusters

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | ~> 1.3 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >= 4.30.0, < 5.0.0 |
| <a name="requirement_time"></a> [time](#requirement\_time) | ~> 0.9.1 |
| <a name="requirement_tls"></a> [tls](#requirement\_tls) | ~> 4.0.3 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | >= 4.30.0, < 5.0.0 |
| <a name="provider_time"></a> [time](#provider\_time) | ~> 0.9.1 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_db_subnet_group.subnet_group](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/db_subnet_group) | resource |
| [aws_rds_cluster.cluster](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/rds_cluster) | resource |
| [aws_rds_cluster_instance.instance](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/rds_cluster_instance) | resource |
| [aws_rds_cluster_parameter_group.params](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/rds_cluster_parameter_group) | resource |
| [time_static.last_update](https://registry.terraform.io/providers/hashicorp/time/latest/docs/resources/static) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_apply_immediately"></a> [apply\_immediately](#input\_apply\_immediately) | Specifies whether any database modifications are applied immediately, or during the next maintenance window | `bool` | `true` | no |
| <a name="input_auto_minor_version_upgrade"></a> [auto\_minor\_version\_upgrade](#input\_auto\_minor\_version\_upgrade) | Indicates that minor engine upgrades will be applied automatically to the DB instance during the maintenance window | `bool` | `true` | no |
| <a name="input_backup_retention_period"></a> [backup\_retention\_period](#input\_backup\_retention\_period) | The days to retain backups for | `number` | `7` | no |
| <a name="input_copy_tags_to_snapshot"></a> [copy\_tags\_to\_snapshot](#input\_copy\_tags\_to\_snapshot) | On delete, copy all Instance tags to the final snapshot | `bool` | `true` | no |
| <a name="input_customer"></a> [customer](#input\_customer) | Customer for the current deployment | `string` | `""` | no |
| <a name="input_database_name"></a> [database\_name](#input\_database\_name) | The name of the database to create when the DB instance is created | `string` | `null` | no |
| <a name="input_db_parameter_group_family"></a> [db\_parameter\_group\_family](#input\_db\_parameter\_group\_family) | The family of the DB parameter group | `string` | `"aurora-mysql5.7"` | no |
| <a name="input_db_parameter_group_parameters"></a> [db\_parameter\_group\_parameters](#input\_db\_parameter\_group\_parameters) | A list of DB parameters to apply | <pre>list(object({<br>    name  = string<br>    value = string<br>  }))</pre> | `null` | no |
| <a name="input_default_instance_class"></a> [default\_instance\_class](#input\_default\_instance\_class) | The default instance class to use for instances | `string` | `"db.t3.small"` | no |
| <a name="input_deletion_protection"></a> [deletion\_protection](#input\_deletion\_protection) | If the DB instance should have deletion protection enabled | `bool` | `false` | no |
| <a name="input_enabled_cloudwatch_logs_exports"></a> [enabled\_cloudwatch\_logs\_exports](#input\_enabled\_cloudwatch\_logs\_exports) | A list of log types that need to be enabled for exporting to CloudWatch Logs. Note that this is not supported on serverless engine. | `list(string)` | `null` | no |
| <a name="input_engine"></a> [engine](#input\_engine) | The database engine to use | `string` | `"aurora-mysql"` | no |
| <a name="input_engine_mode"></a> [engine\_mode](#input\_engine\_mode) | The database engine mode to use | `string` | `"serverless"` | no |
| <a name="input_engine_version"></a> [engine\_version](#input\_engine\_version) | The engine version to use | `string` | `"8.0.mysql_aurora.3.02.2"` | no |
| <a name="input_environment"></a> [environment](#input\_environment) | Environment for the current deployment | `string` | `""` | no |
| <a name="input_iam_database_authentication_enabled"></a> [iam\_database\_authentication\_enabled](#input\_iam\_database\_authentication\_enabled) | Specifies whether or mappings of AWS Identity and Access Management (IAM) accounts to database accounts is enabled | `bool` | `false` | no |
| <a name="input_iam_roles"></a> [iam\_roles](#input\_iam\_roles) | A list of ARNs for the IAM roles to associate with the DB instance | `list(string)` | `null` | no |
| <a name="input_instances"></a> [instances](#input\_instances) | A list of DB instances to create | <pre>list(object({<br>    name                = string<br>    instance_class      = string<br>    publicly_accessible = bool<br>    availability_zone   = string<br>  }))</pre> | `null` | no |
| <a name="input_name"></a> [name](#input\_name) | The name of the launch template | `string` | n/a | yes |
| <a name="input_password"></a> [password](#input\_password) | Password for the master DB user | `string` | `"root"` | no |
| <a name="input_performance_insights_enabled"></a> [performance\_insights\_enabled](#input\_performance\_insights\_enabled) | Specifies whether Performance Insights is enabled | `bool` | `true` | no |
| <a name="input_port"></a> [port](#input\_port) | The port on which the DB accepts connections | `number` | `3306` | no |
| <a name="input_preferred_backup_window"></a> [preferred\_backup\_window](#input\_preferred\_backup\_window) | The daily time range (in UTC) during which automated backups are created if they are enabled | `string` | `"02:00-03:00"` | no |
| <a name="input_preferred_maintenance_window"></a> [preferred\_maintenance\_window](#input\_preferred\_maintenance\_window) | The weekly time range (in UTC) during which system maintenance can occur | `string` | `"sun:03:00-sun:04:00"` | no |
| <a name="input_rds_enhanced_monitoring_interval"></a> [rds\_enhanced\_monitoring\_interval](#input\_rds\_enhanced\_monitoring\_interval) | The interval, in seconds, between points when Enhanced Monitoring metrics are collected for the DB instance | `number` | `0` | no |
| <a name="input_rds_enhanced_monitoring_role_arn"></a> [rds\_enhanced\_monitoring\_role\_arn](#input\_rds\_enhanced\_monitoring\_role\_arn) | The ARN of the IAM role that allows Amazon RDS to send enhanced monitoring metrics to CloudWatch Logs | `string` | `null` | no |
| <a name="input_scaling_configuration"></a> [scaling\_configuration](#input\_scaling\_configuration) | A scaling configuration block | `any` | `null` | no |
| <a name="input_security_group_ids"></a> [security\_group\_ids](#input\_security\_group\_ids) | A list of VPC security groups to associate | `list(string)` | `null` | no |
| <a name="input_serverlessv2_scaling_configuration"></a> [serverlessv2\_scaling\_configuration](#input\_serverlessv2\_scaling\_configuration) | remember it's only valid when engine mode is set to "provisioned" | `any` | `null` | no |
| <a name="input_storage_encrypted"></a> [storage\_encrypted](#input\_storage\_encrypted) | Specifies whether the DB instance is encrypted | `bool` | `true` | no |
| <a name="input_subnet_ids"></a> [subnet\_ids](#input\_subnet\_ids) | A list of VPC subnet IDs | `list(string)` | `null` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | Default tags to add to resources | `map(any)` | `{}` | no |
| <a name="input_username"></a> [username](#input\_username) | Username for the master DB user | `string` | `"root"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_arn"></a> [arn](#output\_arn) | n/a |
| <a name="output_endpoint"></a> [endpoint](#output\_endpoint) | n/a |
| <a name="output_id"></a> [id](#output\_id) | n/a |
| <a name="output_reader_endpoint"></a> [reader\_endpoint](#output\_reader\_endpoint) | n/a |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
