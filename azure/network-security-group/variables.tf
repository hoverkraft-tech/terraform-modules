variable "name" {
  description = "Name applied to this network security group"
  type        = string
  default     = "myresourcegroup"
}

variable "customer" {
  description = "Customer applied to this network security group"
  type        = string
  default     = ""
}

variable "environment" {
  description = "Environment applied to this network security group"
  type        = string
  default     = ""
}

variable "tags" {
  description = "Tags applied to this network security group"
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

variable "security_rules" {
  description = "The security rules to add to this Network Security Group"
  type        = list(any)
  default     = []
}
