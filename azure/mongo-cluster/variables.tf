variable "name" {
  description = "Name of the MongoDB cluster"
  type        = string
}

variable "customer" {
  description = "Customer name applied to the MongoDB cluster"
  type        = string
  default     = ""
}

variable "environment" {
  description = "Environment applied to the MongoDB cluster"
  type        = string
  default     = ""
}

variable "tags" {
  description = "Tags applied to the MongoDB cluster"
  type        = map(any)
  default     = {}
}

# --- below are specific module variables ---


variable "resource_group_name" {
  description = "Name of the resource group"
  type        = string
}

variable "location" {
  description = "Azure region for the MongoDB cluster"
  type        = string
}

variable "administrator_username" {
  description = "Administrator username for the MongoDB cluster"
  type        = string
}

variable "shard_count" {
  description = "Number of shards for the MongoDB cluster"
  type        = number
  default     = 1
}

variable "compute_tier" {
  description = "Compute tier for the MongoDB cluster (e.g., M30, M40, M50)"
  type        = string
  default     = "M30"
}

variable "high_availability_mode" {
  description = "High availability mode for the MongoDB cluster (Disabled, ZoneRedundantPreferred)"
  type        = string
  default     = "ZoneRedundantPreferred"
}

variable "storage_size_in_gb" {
  description = "Storage size in GB for the MongoDB cluster"
  type        = number
  default     = 32
}

variable "storage_type" {
  description = "Storage type for the MongoDB cluster. Possible values are PremiumSSD and PremiumSSDv2"
  type        = string
  default     = "PremiumSSD"
}

variable "mongodb_version" {
  description = "MongoDB server version (5.0, 6.0, 7.0, 8.0)"
  type        = string
}

variable "public_network_access" {
  description = "Enable or disable public network access (Enabled, Disabled)"
  type        = string
  default     = "Disabled"
}

variable "authentication_methods" {
  description = "Authentication methods for the MongoDB cluster Possible values are NativeAuth and MicrosoftEntraID"
  type        = list(string)
}
