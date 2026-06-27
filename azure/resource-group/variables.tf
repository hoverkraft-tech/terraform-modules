variable "name" {
  description = "Name applied to this resource group"
  type        = string
  default     = "myresourcegroup"
}

variable "customer" {
  description = "Customer applied to this resource group"
  type        = string
  default     = ""
}

variable "environment" {
  description = "Environment applied to this resource group"
  type        = string
  default     = ""
}

variable "tags" {
  description = "Tags applied to this resource group"
  type        = map(any)
  default     = {}
}

# --- below are specific modules variables ---

variable "location" {
  description = "Azure region where the resource group will be created"
  type        = string
}
