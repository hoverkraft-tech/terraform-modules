# tflint-ignore: terraform_unused_declarations
variable "name" {
  description = "Name to be used on all the resources as identifier"
  type        = string
}

# tflint-ignore: terraform_unused_declarations
variable "customer" {
  description = "Customer for the current deployment"
  type        = string
  default     = ""
}

# tflint-ignore: terraform_unused_declarations
variable "environment" {
  description = "Environment for the current deployment"
  type        = string
  default     = ""
}

# tflint-ignore: terraform_unused_declarations
variable "tags" {
  description = "Default tags to add to resources"
  type        = map(any)
  default     = {}
}

# module specific variables
variable "certificate_arn" {
  description = "Certificate ARN to be used for the distribution"
  type        = string
}

variable "validation_record_fqdns" {
  description = "Validation record FQDNs to be used for the distribution"
  type        = list(string)
}

variable "timeout_create" {
  description = "Timeout for the creation of the validation record"
  type        = string
  default     = "30m"
}
