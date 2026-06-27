variable "name" {
  description = "Name applied to this Firewall Policy"
  type        = string
}

variable "customer" {
  description = "Customer applied to this Firewall Policy"
  type        = string
  default     = ""
}

variable "environment" {
  description = "Environment applied to this Firewall Policy"
  type        = string
  default     = ""
}

variable "tags" {
  description = "Tags applied to this Firewall Policy"
  type        = map(any)
  default     = {}
}

# --- below are specific module variables ---

variable "location" {
  description = "Azure region where the Firewall Policy will be created"
  type        = string
}

variable "resource_group_name" {
  description = "The name of the resource group in which to create the Firewall Policy"
  type        = string
}

variable "sku" {
  description = "The SKU Tier of the Firewall Policy. Possible values are Standard, Premium and Basic"
  type        = string
  default     = "Basic"
}

variable "threat_intelligence_mode" {
  description = "The operation mode for Threat Intelligence. Possible values are Alert, Deny and Off"
  type        = string
  default     = "Alert"
}

variable "base_policy_id" {
  description = "The ID of the base Firewall Policy"
  type        = string
  default     = null
}
