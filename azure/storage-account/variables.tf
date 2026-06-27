variable "name" {
  description = "Name applied to this storage account"
  type        = string
  default     = "mystorageaccount"
}

variable "customer" {
  description = "Customer applied to this storage account"
  type        = string
  default     = ""
}

variable "environment" {
  description = "Environment applied to this storage account"
  type        = string
  default     = ""
}

variable "tags" {
  description = "Tags applied to this storage account"
  type        = map(any)
  default     = {}
}

# --- below are specific modules variables ---

variable "resource_group_name" {
  description = "Azure resource group name"
  type        = string
}

variable "location" {
  description = "Azure region where the storage account will be created"
  type        = string
}

variable "account_tier" {
  description = "Defines the Tier to use for this storage account"
  type        = string
  default     = "Standard"
}

variable "account_kind" {
  description = "Type of storage account"
  type        = string
  default     = "StorageV2"
}

variable "account_replication_type" {
  description = "Defines the type of replication to use for this storage account"
  type        = string
  default     = "GRS"
}

variable "network_rules" {
  type        = list(any)
  description = "Network rules to apply to the storage account"
  default     = []
}

variable "allow_nested_items_to_be_public" {
  type        = bool
  description = "Allow nested items to be publicly accessible"
  default     = false
}

variable "default_to_oauth_authentication" {
  type        = bool
  description = "Whether to default to OAuth authentication for the storage account"
  default     = true
}

variable "public_network_access_enabled" {
  type        = bool
  description = "Whether public network access is enabled for the storage account"
  default     = false
}

variable "hns_enabled" {
  type        = bool
  description = "Whether Hierarchical Namespace is enabled for the storage account"
  default     = false
}

variable "role_assignments" {
  description = "Map of role assignments to create on the storage account"
  type = list(object({
    role_definition_name = string
    principal_id         = string
    description          = optional(string)
  }))
  default = []
}

variable "storage_containers" {
  description = "Map of storage containers to create in the storage account"
  type = list(object({
    name                  = string
    container_access_type = string
  }))
  default = []
}

variable "subnet_id" {
  description = "The ID of the subnet where the private endpoint will be created"
  type        = string
}

variable "private_dns_zone_id" {
  description = "The ID of the private DNS zone for the Key Vault private endpoint"
  type        = string
}
