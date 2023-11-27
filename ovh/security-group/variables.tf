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

# bellow are specific modules variables
variable "region" {
  description = "Region to use for the instance"
  type        = string
}

variable "rules" {
  description = "List of rules to add to the security group"
  type        = list(any)
  default     = []
}
