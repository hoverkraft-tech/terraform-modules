variable "name" {
  description = "Name of the PostgreSQL server"
  type        = string
}

variable "customer" {
  description = "Customer name for tagging"
  type        = string
}

variable "environment" {
  description = "Environment name for tagging"
  type        = string
}

variable "tags" {
  description = "Additional tags to apply to resources"
  type        = map(string)
  default     = {}
}

variable "resource_group_name" {
  description = "Name of the resource group"
  type        = string
}

variable "location" {
  description = "Azure region for the PostgreSQL server"
  type        = string
}

variable "postgresql_version" {
  description = "PostgreSQL version"
  type        = string
  default     = "16"
}

variable "sku_name" {
  description = "SKU name for the PostgreSQL server"
  type        = string
  default     = "B_Standard_B1ms"
}

variable "administrator_login" {
  description = "Administrator username (not used when active_directory_auth_enabled is true)"
  type        = string
  default     = null
}

variable "administrator_password" {
  description = "Administrator password (not used when active_directory_auth_enabled is true)"
  type        = string
  sensitive   = true
  default     = null
}

variable "storage_mb" {
  description = "Storage size in MB"
  type        = number
  default     = 32768
}

variable "backup_retention_days" {
  description = "Backup retention period in days"
  type        = number
  default     = 7
}

variable "geo_redundant_backup_enabled" {
  description = "Enable geo-redundant backups for PostgreSQL Flexible Server"
  type        = bool
  default     = false
}

variable "zone" {
  description = "Availability zone"
  type        = string
  default     = null
}

variable "create_mode" {
  description = "Create mode for the server"
  type        = string
  default     = "Default"
}

variable "subnet_id" {
  description = "Subnet ID for private network integration"
  type        = string
  default     = null
}

variable "private_dns_zone_id" {
  description = "Private DNS zone ID"
  type        = string
  default     = null
}

variable "public_network_access_enabled" {
  description = "Enable public network access"
  type        = bool
  default     = false
}

variable "active_directory_auth_enabled" {
  description = "Enable Azure Active Directory authentication"
  type        = bool
  default     = true
}

variable "tenant_id" {
  description = "Azure AD tenant ID"
  type        = string
  default     = null
}

variable "entra_admin_object_id" {
  description = "Object ID of the Entra admin"
  type        = string
  default     = null
}

variable "entra_admin_name" {
  description = "Name of the Entra admin"
  type        = string
  default     = null
}

variable "entra_admin_type" {
  description = "Type of the Entra admin principal"
  type        = string
  default     = "User"
}

variable "storage_tier" {
  description = "The storage tier for the PostgreSQL Flexible Server. Possible values are P4, P6, P10, P15, P20, P30, P40, P50, P60, P70, and P80."
  type        = string
  default     = "P4"
  validation {
    condition     = contains(["P4", "P6", "P10", "P15", "P20", "P30", "P40", "P50", "P60", "P70", "P80"], var.storage_tier)
    error_message = "Storage tier must be one of: P4, P6, P10, P15, P20, P30, P40, P50, P60, P70, P80."
  }
}

variable "high_availability_enabled" {
  description = "Enable high availability for PostgreSQL Flexible Server"
  type        = bool
  default     = false
}

variable "high_availability_mode" {
  description = "High availability mode. Possible values are SameZone and ZoneRedundant"
  type        = string
  default     = "ZoneRedundant"
  validation {
    condition     = contains(["SameZone", "ZoneRedundant"], var.high_availability_mode)
    error_message = "High availability mode must be either SameZone or ZoneRedundant."
  }
}

variable "high_availability_standby_zone" {
  description = "Availability zone for the standby server when high availability is enabled"
  type        = string
  default     = null
}

variable "server_configurations" {
  description = "List of PostgreSQL server configurations to apply"
  type = list(object({
    name  = string
    value = string
  }))
  default = []
}

