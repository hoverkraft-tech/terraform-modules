variable "name" {
  description = "Name applied to this Public IP"
  type        = string
}

variable "customer" {
  description = "Customer applied to this Public IP"
  type        = string
  default     = ""
}

variable "environment" {
  description = "Environment applied to this Public IP"
  type        = string
  default     = ""
}

variable "tags" {
  description = "Tags applied to this Public IP"
  type        = map(any)
  default     = {}
}

# --- below are specific module variables ---

variable "location" {
  description = "Azure region where the Public IP will be created"
  type        = string
}

variable "resource_group_name" {
  description = "The name of the resource group in which to create the Public IP"
  type        = string
}

variable "allocation_method" {
  description = "Defines the allocation method for this IP address. Possible values are Static or Dynamic"
  type        = string
  default     = "Static"
}

variable "sku" {
  description = "The SKU of the Public IP. Possible values are Basic and Standard"
  type        = string
  default     = "Standard"
}

variable "sku_tier" {
  description = "The SKU Tier of the Public IP. Possible values are Regional and Global"
  type        = string
  default     = "Regional"
}

variable "zones" {
  description = "A list of Availability Zones in which this Public IP should be located"
  type        = list(string)
  default     = []
}
