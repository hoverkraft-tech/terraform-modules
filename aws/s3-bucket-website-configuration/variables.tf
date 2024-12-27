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

variable "bucket_id" {
  description = "ID of the bucket to apply the lifecycle configuration"
  type        = string
}

# example index document
# { suffix = "index.html" }
variable "index_document" {
  description = "index document for the website configuration"
  type        = any
  default     = null
}

variable "error_document" {
  description = "error document for the website configuration"
  type        = any
  default     = null
}

variable "redirect_all_requests_to" {
  description = "mandatory redirect for the website configuration"
  type        = any
  default     = null
}

# variable "routing_rule" {
#   description = "routing rule block"
#   type = any
#   default = null
# }

variable "routing_rules" {
  description = "routing rules in JSON format"
  type        = string
  default     = null
}
