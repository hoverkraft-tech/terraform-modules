variable "name" {
  description = "Name applied to this Fabric Capacity"
  type        = string
}

variable "customer" {
  description = "Customer applied to this Fabric Capacity"
  type        = string
  default     = ""
}

variable "environment" {
  description = "Environment applied to this Fabric Capacity"
  type        = string
  default     = ""
}

variable "tags" {
  description = "Tags applied to this Fabric Capacity"
  type        = map(any)
  default     = {}
}

# --- below are specific modules variables ---

variable "resource_group_name" {
  description = "Name of the resource group in which to create the private DNS zone"
  type        = string
}

variable "location" {
  description = "Azure region where the resource group will be created"
  type        = string
}

variable "sku_name" {
  description = "The name of the SKU to use for the Fabric Capacity. Possible values are F2, F4, F8, F16, F32, F64, F128, F256, F512, F1024, F2048."
  type        = string
}

variable "administration_members" {
  description = "An array of administrator user identities. The member must be an Entra user or a service principal"
  type        = list(any)
  default     = []
}
