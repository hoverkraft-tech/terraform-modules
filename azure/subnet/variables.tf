variable "name" {
  description = "Name applied to the created resources"
  type        = string
}

variable "customer" {
  description = "Customer name applied to the created resources"
  type        = string
  default     = ""
}

variable "environment" {
  description = "Environment name applied to the created resources"
  type        = string
  default     = ""
}

variable "tags" {
  description = "Extra tags applied to the created resources"
  type        = map(any)
  default     = {}
}

# --- below are specific modules variables ---

variable "resource_group_name" {
  description = "Name of the resource group in which to create the subnet"
  type        = string
}

variable "address_prefixes" {
  description = "The address prefixes to use for the subnet."
  type        = list(string)
  default     = ["10.10.0.0/16"]
}

variable "virtual_network_name" {
  description = "The name of the virtual network to which to attach the subnet"
  type        = string
}

variable "default_outbound_access_enabled" {
  description = "Enable default outbound access to the internet for the subnet"
  type        = bool
  default     = true
}

variable "delegations" {
  description = "List of subnet delegations"
  type = list(object({
    name         = string
    service_name = string
    actions      = list(string)
  }))
  default = []
}
