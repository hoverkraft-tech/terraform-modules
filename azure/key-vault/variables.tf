variable "name" {
  description = "Name applied to this AI Foundry Hub"
  type        = string
}

variable "customer" {
  description = "Customer applied to this AI Foundry Hub"
  type        = string
  default     = ""
}

variable "environment" {
  description = "Environment applied to this AI Foundry Hub"
  type        = string
  default     = ""
}

variable "tags" {
  description = "Tags applied to this AI Foundry Hub"
  type        = map(any)
  default     = {}
}

# --- below are specific module variables ---

variable "location" {
  description = "Azure region where the Key Vault will be created"
  type        = string
}

variable "resource_group_name" {
  description = "The name of the resource group in which to create the Key Vault"
  type        = string
}

variable "tenant_id" {
  description = "The Azure Active Directory tenant ID that should be used for authenticating requests to the key vault"
  type        = string
}

variable "sku_name" {
  description = "The Name of the SKU used for this Key Vault. Possible values are standard and premium."
  type        = string
  default     = "standard"
}

variable "enabled_for_disk_encryption" {
  description = "Boolean flag to specify whether Azure Disk Encryption is permitted to retrieve secrets from the vault and unwrap keys"
  type        = bool
  default     = false
}

variable "rbac_authorization_enabled" {
  description = "Boolean flag to specify whether Azure Key Vault uses Role Based Access Control (RBAC) for authorization of data actions"
  type        = bool
  default     = true
}

variable "purge_protection_enabled" {
  description = "Is Purge Protection enabled for this Key Vault"
  type        = bool
  default     = false
}

variable "soft_delete_retention_days" {
  description = "The number of days that the Key Vault will retain deleted keys, secrets, and certificates. This value must be between 7 and 90."
  type        = number
  default     = 90
}
variable "public_network_access_enabled" {
  description = "Whether public network access is allowed for this Key Vault"
  type        = bool
  default     = false
}

variable "role_assignments" {
  description = "List of role assignments for the Key Vault. Each assignment should include role_definition_name and principal_id."
  type = list(object({
    role_definition_name = string
    principal_id         = string
    description          = optional(string)
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
