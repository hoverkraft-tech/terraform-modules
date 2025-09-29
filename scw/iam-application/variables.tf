variable "name" {
  description = "Name of the bucket"
  type        = string
}

variable "customer" {
  description = "Customer for the current deployment"
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
