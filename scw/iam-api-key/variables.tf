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

variable "application_id" {
  type        = string
  description = "ID of the application attached to the api key"
  default     = null
}

variable "description" {
  type        = string
  description = "Description of the iam api key"
  default     = null
}

variable "user_id" {
  type        = string
  description = "ID of the user attached to the api key"
  default     = null
}

variable "expires_at" {
  type        = string
  description = "The date and time of the expiration of the iam api key"
  default     = null
}

variable "default_project_id" {
  type        = string
  description = "The default project ID to use with object storage"
  default     = null
}
