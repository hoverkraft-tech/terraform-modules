variable "name" {
  description = "Name applied to this subscription"
  type        = string
  default     = "mysubscription"
}

variable "customer" {
  description = "Customer applied to this subscription"
  type        = string
  default     = ""
}

variable "environment" {
  description = "Environment applied to this subscription"
  type        = string
  default     = ""
}

variable "tags" {
  description = "Tags applied to this subscription"
  type        = map(any)
  default     = {}
}

# --- below are specific modules variables ---

variable "billing_account_name" {
  description = "The billing account name used for the new subscription"
  type        = string
}

variable "billing_profile_name" {
  description = "The billing profile name used for the new subscription"
  type        = string
}

variable "invoice_section_name" {
  description = "The invoice section name used for the new subscription"
  type        = string
}

variable "workload" {
  description = "The workload type for the subscription"
  type        = string
  default     = null

  validation {
    condition     = try(contains(["Production", "DevTest"], var.workload), true)
    error_message = "Workload must be either 'Production', 'DevTest', or null."
  }
}

variable "management_group_id" {
  description = "The management group ID to associate with the subscription"
  type        = string
  default     = null
}
