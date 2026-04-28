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
  description = "Azure region where the resource group will be created"
  type        = string
}

variable "resource_group_name" {
  description = "The name of the resource group in which to create the Log Analytics Workspace"
  type        = string
}

variable "sku" {
  description = "The SKU of the Log Analytics Workspace"
  type        = string
}

variable "retention_in_days" {
  description = "The retention period for the Log Analytics Workspace in days"
  type        = number
}
