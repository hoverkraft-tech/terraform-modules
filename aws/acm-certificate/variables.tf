variable "name" {
  description = "Name to be used on all the resources as identifier"
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
variable "domain_name" {
  description = "Domain name to be used for the certificate"
  type        = string
}

variable "subject_alternative_names" {
  description = "Subject alternative names to be used for the certificate"
  type        = list(string)
  default     = []
}

variable "certificate_transparency_logging_preference" {
  description = "Certificate transparency logging preference"
  type        = string
  default     = "ENABLED"
}
