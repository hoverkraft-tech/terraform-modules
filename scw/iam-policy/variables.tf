variable "name" {
  description = "Name of the bucket"
  type        = string
}

variable "customer" {
  description = "Customer for the current deployment"
  type        = string
  default     = ""
}

variable "environment" {
  description = "Environment for the current deployment"
  type        = string
  default     = ""
}

variable "tags" {
  description = "Default tags to add to resources"
  type        = map(any)
  default     = {}
}

# module specific variables

variable "description" {
  type        = string
  description = "The description of the iam application"
  default     = null
}

variable "organization_id" {
  type        = string
  description = "The ID of the organization the application is associated with"
  default     = null
}

variable "application_id" {
  type        = string
  description = "The ID of the application the policy is associated with"
  default     = null
}

variable "user_id" {
  type        = string
  description = "The ID of the user the policy is associated with"
  default     = null
}

variable "group_id" {
  type        = string
  description = "The ID of the group the policy is associated with"
  default     = null
}

variable "no_principal" {
  type        = bool
  description = "If true, the policy will not be associated with any principal"
  default     = null
}

variable "rules" {
  type        = any
  description = "The list of rules to apply to the policy"
  default     = []
}
