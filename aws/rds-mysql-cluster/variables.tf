variable "name" {
  description = "The name of the launch template"
  type        = string
}

variable "customer" {
  description = "Customer for the current deployment"
  type        = string
  default     = ""
}

variable "tags" {
  description = "Default tags to add to resources"
  type        = map(any)
  default     = {}
}

# module specific variables
variable "engine" {
  description = "The database engine to use"
  type        = string
  default     = "aurora-mysql"
}

variable "engine_mode" {
  description = "The database engine mode to use"
  type        = string
  default     = "serverless"
}

variable "engine_version" {
  description = "The engine version to use"
  type        = string
  default     = "8.0.mysql_aurora.3.02.2"
}

variable "database_name" {
  description = "The name of the database to create when the DB instance is created"
  type        = string
  default     = null
}

variable "username" {
  description = "Username for the master DB user"
  type        = string
  default     = "root"
}

variable "password" {
  description = "Password for the master DB user"
  type        = string
  default     = "root"
}

variable "deletion_protection" {
  description = "If the DB instance should have deletion protection enabled"
  type        = bool
  default     = false
}

variable "backup_retention_period" {
  description = "The days to retain backups for"
  type        = number
  default     = 7
}

variable "preferred_backup_window" {
  description = "The daily time range (in UTC) during which automated backups are created if they are enabled"
  type        = string
  default     = "02:00-03:00"
}

variable "preferred_maintenance_window" {
  description = "The weekly time range (in UTC) during which system maintenance can occur"
  type        = string
  default     = "sun:03:00-sun:04:00"
}

variable "port" {
  description = "The port on which the DB accepts connections"
  type        = number
  default     = 3306
}

variable "security_group_ids" {
  description = "A list of VPC security groups to associate"
  type        = list(string)
  default     = null
}

variable "storage_encrypted" {
  description = "Specifies whether the DB instance is encrypted"
  type        = bool
  default     = true
}

variable "apply_immediately" {
  description = "Specifies whether any database modifications are applied immediately, or during the next maintenance window"
  type        = bool
  default     = true
}

variable "subnet_ids" {
  description = "A list of VPC subnet IDs"
  type        = list(string)
  default     = null
}

variable "iam_database_authentication_enabled" {
  description = "Specifies whether or mappings of AWS Identity and Access Management (IAM) accounts to database accounts is enabled"
  type        = bool
  default     = false
}

variable "copy_tags_to_snapshot" {
  description = "On delete, copy all Instance tags to the final snapshot"
  type        = bool
  default     = true
}

variable "iam_roles" {
  description = "A list of ARNs for the IAM roles to associate with the DB instance"
  type        = list(string)
  default     = null
}

variable "enabled_cloudwatch_logs_exports" {
  description = "A list of log types that need to be enabled for exporting to CloudWatch Logs. Note that this is not supported on serverless engine."
  type        = list(string)
  default     = null
}

variable "scaling_configuration" {
  description = "A scaling configuration block"
  type        = any
  default     = null
  validation {
    condition = var.scaling_configuration != null ? alltrue([
      contains(keys(var.scaling_configuration), "auto_pause"),
      contains(keys(var.scaling_configuration), "max_capacity"),
      contains(keys(var.scaling_configuration), "min_capacity"),
      contains(keys(var.scaling_configuration), "seconds_until_auto_pause"),
      contains(keys(var.scaling_configuration), "timeout_action"),
      can(tobool(var.scaling_configuration.auto_pause)),
      can(tonumber(var.scaling_configuration.max_capacity)),
      can(tonumber(var.scaling_configuration.min_capacity)),
      can(tonumber(var.scaling_configuration.seconds_until_auto_pause)),
      can(tostring(var.scaling_configuration.timeout_action))
    ]) : true
    error_message = "scaling_configuration must be a map with the keys: auto_pause, max_capacity, min_capacity, seconds_until_auto_pause, and timeout_action."
  }
}

# remember it's only valid when engine mode is set to "provisioned"
variable "serverlessv2_scaling_configuration" {
  type    = any
  default = null
  validation {
    condition = var.serverlessv2_scaling_configuration == null || (
      contains(keys(var.serverlessv2_scaling_configuration), "min_capacity") &&
      contains(keys(var.serverlessv2_scaling_configuration), "max_capacity") &&
      var.serverlessv2_scaling_configuration.min_capacity <= var.serverlessv2_scaling_configuration.max_capacity
    )
    error_message = "The serverlessv2_scaling_configuration must be a map with the keys: min_capacity and max_capacity, where min_capacity is less than or equal to max_capacity."
  }
}
variable "db_parameter_group_family" {
  description = "The family of the DB parameter group"
  type        = string
  default     = "aurora-mysql5.7"
}

variable "db_parameter_group_parameters" {
  description = "A list of DB parameters to apply"
  default     = null
  type = list(object({
    name  = string
    value = string
  }))
}

variable "instances" {
  description = "A list of DB instances to create"
  default     = null
  type = list(object({
    name                = string
    instance_class      = string
    publicly_accessible = bool
    availability_zone   = string
  }))
}

variable "default_instance_class" {
  description = "The default instance class to use for instances"
  type        = string
  default     = "db.t3.small"
}

variable "rds_enhanced_monitoring_role_arn" {
  description = "The ARN of the IAM role that allows Amazon RDS to send enhanced monitoring metrics to CloudWatch Logs"
  type        = string
  default     = null
}

variable "rds_enhanced_monitoring_interval" {
  description = "The interval, in seconds, between points when Enhanced Monitoring metrics are collected for the DB instance"
  type        = number
  default     = 0
}

variable "auto_minor_version_upgrade" {
  description = "Indicates that minor engine upgrades will be applied automatically to the DB instance during the maintenance window"
  type        = bool
  default     = true
}

variable "performance_insights_enabled" {
  description = "Specifies whether Performance Insights is enabled"
  type        = bool
  default     = true
}
