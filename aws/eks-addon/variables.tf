variable "name" {
  description = "The name of the addon to be deployed"
  type        = string
}

variable "customer" {
  description = "Customer tag for the addon to be deployed"
  type        = string
  default     = ""
}

variable "tags" {
  description = "Default tags to add to resources"
  type        = map(any)
  default     = {}
}

# module specific variables
variable "cluster_name" {
  description = "The name of the cluster"
  type        = string
}

variable "addon_version" {
  description = "The version of the addon to be deployed."
  type        = string
}

variable "service_account_role_arn" {
  description = "The ARN of the service account role to use for the addon."
  type        = string
  default     = null
}

variable "configuration_values" {
  description = "The configuration values for the addon."
  type        = string
  default     = null
}
