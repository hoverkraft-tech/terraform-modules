variable "name" {
  description = "Name applied to the billing profile"
  type        = string
  default     = "terragrunt-backend"
}

variable "customer" {
  description = "Customer applied to this billing profile"
  type        = string
  default     = ""
}

variable "environment" {
  description = "Environment applied to this billing profile"
  type        = string
  default     = ""
}

variable "tags" {
  description = "Tags applied to this billing profile"
  type        = map(any)
  default     = {}
}

# --- below are specific module variables ---
variable "billing_account_id" {
  description = "The ID of the Azure billing account under which the billing profile will be created"
  type        = string
}

variable "billing_firstname" {
  description = "The firstname for the billing and shipping address"
  type        = string
}

variable "billing_lastname" {
  description = "The lastname for the billing and shipping address"
  type        = string
}

variable "billing_address" {
  description = "The address line for the billing and shipping address"
  type        = string
}

variable "billing_city" {
  description = "The city for the billing and shipping address"
  type        = string
}

variable "billing_company_name" {
  description = "The company name for the billing and shipping address"
  type        = string
}

variable "billing_country" {
  description = "The country code for the billing and shipping address"
  type        = string
}

variable "billing_postalCode" {
  description = "The postal code for the billing and shipping address"
  type        = string
}

variable "billing_region" {
  description = "The region/state for the billing and shipping address"
  type        = string
}

variable "billing_isValidAddress" {
  description = "Whether the billing and shipping address is valid"
  type        = bool
  default     = true
}

variable "sku_id" {
  description = "The SKU ID for the Azure plan to enable in the billing profile"
  type        = string
  default     = "0001"
}

variable "payment_method_id" {
  description = "The payment method ID to be used for billing profile creation"
  type        = string
}

# variable "payment_sca_id" {
#   description = "The payment SCA (Strong Customer Authentication) ID for secure payment processing"
#   type = string
# }
