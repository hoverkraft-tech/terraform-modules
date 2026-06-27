variable "name" {
  description = "Name applied to this Azure Firewall"
  type        = string
}

variable "customer" {
  description = "Customer applied to this Azure Firewall"
  type        = string
  default     = ""
}

variable "environment" {
  description = "Environment applied to this Azure Firewall"
  type        = string
  default     = ""
}

variable "tags" {
  description = "Tags applied to this Azure Firewall"
  type        = map(any)
  default     = {}
}

# --- below are specific module variables ---

variable "location" {
  description = "Azure region where the Firewall will be created"
  type        = string
}

variable "resource_group_name" {
  description = "The name of the resource group in which to create the Firewall"
  type        = string
}

variable "sku_name" {
  description = "SKU name of the Firewall. Possible values are AZFW_Hub and AZFW_VNet"
  type        = string
  default     = "AZFW_VNet"
}

variable "sku_tier" {
  description = "SKU tier of the Firewall. Possible values are Premium, Standard, and Basic"
  type        = string
  default     = "Basic"
}

variable "firewall_policy_id" {
  description = "The ID of the Firewall Policy applied to this Firewall"
  type        = string
  default     = null
}

variable "ip_configuration_name" {
  description = "Name of the IP configuration"
  type        = string
  default     = "configuration"
}

variable "subnet_id" {
  description = "The ID of the AzureFirewallSubnet where the Firewall will be deployed"
  type        = string
}

variable "public_ip_address_id" {
  description = "The ID of the Public IP address associated with the Firewall"
  type        = string
  default     = null
}

variable "zones" {
  description = "Availability zones for the Firewall"
  type        = list(string)
  default     = []
}

variable "management_ip_name" {
  type    = string
  default = "management"
}

variable "management_ip_subnet" {
  type = string
}

variable "management_ip_id" {
  type = string
}
