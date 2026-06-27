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
  description = "Azure region where the NAT Gateway will be created"
  type        = string
}

variable "resource_group_name" {
  description = "The name of the resource group in which to create the NAT Gateway"
  type        = string
}

variable "sku_name" {
  description = "The SKU which should be used"
  type        = string
  default     = "Standard"
}

variable "idle_timeout_in_minutes" {
  description = "The idle timeout which should be used in minutes"
  type        = number
  default     = 4
}

variable "zones" {
  description = " A list of Availability Zones in which this NAT Gateway should be located. Changing this forces a new NAT Gateway to be created"
  type        = list(any)
  default     = null
}

variable "subnet_ids" {
  description = "List of subnet ID to which the NAT gateway will be attached"
  type        = list(string)
  default     = []
}


variable "public_ip_allocation_method" {
  description = "TDefines the allocation method of the IP address. Possible values are Static or Dynamic."
  type        = string
  default     = "Static"
}

variable "public_ip_sku" {
  description = "The SKU of the associated Public IP. Possible values are Basic and Standard"
  type        = string
  default     = "Standard"
}
