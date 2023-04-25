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
variable "region" {
  description = "Region to deploy the bucket"
  type        = string
  default     = "fr-par"
}

variable "force_destroy" {
  description = "Force destroy the bucket and its content in case of replacement"
  type        = bool
  default     = false
}

variable "lifecycle_rules" {
  description = "Lifecycle rules for the bucket"
  type        = list(object({
    enabled    = bool
    prefix     = string
    abort_incomplete_multipart_upload_days = number
    expiration = object({
      days = number
    })
    transition = object({
      days          = number
      storage_class = string
    })
  }))
  default     = []
}

variable "cors_rules" {
  description = "CORS rules for the bucket"
  type        = list(object({
    allowed_headers = list(string)
    allowed_methods = list(string)
    allowed_origins = list(string)
    expose_headers  = list(string)
    max_age_seconds = number
  }))
  default     = []
}

variable "versioning" {
  description = "Versioning for the bucket"
  type        = bool
  default     = false
}
