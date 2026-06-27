variable "name" {
  description = "Name applied to this identity"
  type        = string
}

variable "customer" {
  description = "Customer applied to this identity"
  type        = string
  default     = ""
}

variable "environment" {
  description = "Environment applied to this identity"
  type        = string
  default     = ""
}

variable "tags" {
  description = "Tags applied to this identity"
  type        = map(any)
  default     = {}
}

# --- below are specific module variables ---

variable "location" {
  description = "Azure region where the identity will be created"
  type        = string
}

variable "resource_group_name" {
  description = "The name of the resource group in which to create the identity"
  type        = string
}

