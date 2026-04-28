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
  description = "Name of the resource group in which to create the private DNS zone"
  type        = string
}

variable "virtual_network_links" {
  description = "List of Vnet to link to"
  type = list(object({
    name                 = string
    virtual_network_id   = string
  }))
  default = []
}
