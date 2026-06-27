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
  description = "The name of the resource group in which to create the Virtual Network"
  type        = string
}

variable "address_space" {
  description = "The address space of the Virtual Network in CIDR notation"
  type        = list(string)
  default     = ["10.0.0.0/8"]
}

variable "dns_servers" {
  description = "A list of DNS server IP addresses assigned to the Virtual Network"
  type        = any
  default     = null
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
