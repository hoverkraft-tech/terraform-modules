variable "name" {
  description = "Name applied to this virtual network"
  type        = string
  default     = "myresourcegroup"
}

variable "customer" {
  description = "Customer applied to this virtual network"
  type        = string
  default     = ""
}

variable "environment" {
  description = "Environment applied to this virtual network"
  type        = string
  default     = ""
}

variable "tags" {
  description = "Tags applied to this virtual network"
  type        = map(any)
  default     = {}
}

# --- below are specific modules variables ---

variable "location" {
  description = "Azure region where the resource group will be created"
  type        = string
}

variable "resource_group_name" {
  description = "The name of the resource group in which to create the container registry"
  type        = string
}

variable "sku" {
  description = "The SKU name of the container registry. Possible values are Basic, Standard and Premium"
  type        = string
  default     = "Basic"
}

variable "admin_enabled" {
  description = "Specifies whether the admin user is enabled for the container registry"
  type        = bool
  default     = false
}

variable "public_network_access_enabled" {
  description = "Whether public network access is allowed for the container registry"
  type        = bool
  default     = true
}

variable "retention_policy_in_days" {
  description = "The number of days to retain an untagged manifest after which it gets purged. Only available for Premium SKU"
  type        = number
  default     = null
}

variable "identity_name" {
  description = "Name of the user-assigned managed identity for the container registry"
  type        = string
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
