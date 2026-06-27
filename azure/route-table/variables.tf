variable "name" {
  description = "Name applied to this Route Table"
  type        = string
}

variable "customer" {
  description = "Customer applied to this Route Table"
  type        = string
  default     = ""
}

variable "environment" {
  description = "Environment applied to this Route Table"
  type        = string
  default     = ""
}

variable "tags" {
  description = "Tags applied to this Route Table"
  type        = map(any)
  default     = {}
}

# --- below are specific module variables ---

variable "location" {
  description = "Azure region where the Route Table will be created"
  type        = string
}

variable "resource_group_name" {
  description = "The name of the resource group in which to create the Route Table"
  type        = string
}

variable "routes" {
  description = "List of route objects"
  type = list(object({
    name                   = string
    address_prefix         = string
    next_hop_type          = string
    next_hop_in_ip_address = optional(string)
  }))
  default = []
}

variable "subnet_ids" {
  description = "List of subnet ID"
  type        = list(string)
  default     = []
}
