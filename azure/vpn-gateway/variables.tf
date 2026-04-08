variable "name" {
  description = "Name applied to this service principal"
  type        = string
  default     = ""
}

variable "customer" {
  description = "Customer applied to this service principal"
  type        = string
  default     = ""
}

variable "environment" {
  description = "Environment applied to this service principal"
  type        = string
  default     = ""
}

variable "tags" {
  description = "Tags applied to this service principal"
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

variable "sku" {
  description = "The SKU which should be used"
  type        = string
  default     = "Basic"
}

variable "subnet_id" {
  description = "Subnet ID to which the VPN gateway will be attached"
  type        = string
}

variable "public_ip_name" {
  description = "The name of the associated Public IP"
  type        = string
}

variable "public_ip_allocation_method" {
  description = "TDefines the allocation method of the IP address. Possible values are Static or Dynamic."
  type        = string
  default     = "Static"
}

variable "public_ip_zones" {
  description = " A list of Availability Zones in which this NAT Gateway should be located. Changing this forces a new NAT Gateway to be created"
  type        = list(any)
  default     = null
}

variable "address_space" {
  description = "TDefines the allocation method of the IP address. Possible values are Static or Dynamic."
  type        = list(string)
}

variable "root_certificate_name" {
  description = "Name of the root certificate"
  type        = string
  default     = null
}

variable "public_cert_data" {
  description = "The public certificate of the root certificate authority. The certificate must be provided in Base-64 encoded X.509 format (PEM). In particular, this argument must not include the -----BEGIN CERTIFICATE----- or -----END CERTIFICATE----- markers, nor any newlines."
  type        = string
  default     = null
}

variable "vpn_client_protocols" {
  description = "List of the protocols supported by the vpn client"
  type        = list(string)
  default     = []
}

variable "vpn_auth_types" {
  description = "List of the vpn authentication types for the virtual network gateway. The supported values are AAD, Radius and Certificate"
  type        = list(string)
  default     = []
}

variable "aad_tenant" {
  description = "AzureAD Tenant URL. Must be in this format: https://login.microsoftonline.com/{TenantID}"
  type        = string
  default     = null
}

variable "aad_issuer" {
  description = "The STS url for your tenant. Must be in this format: https://sts.windows.net/{TenantID}/"
  type        = string
  default     = null
}

variable "aad_audience" {
  description = "The client id of the Azure VPN application. Must be 41b23e61-6c1e-4545-b367-cd054e0ed4b4 for Azure VPN"
  type        = string
  default     = null
}
