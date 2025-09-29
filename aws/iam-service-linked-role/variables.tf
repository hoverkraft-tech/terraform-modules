variable "name" {
  description = "Name applied to this role"
  type        = string
  default     = "myIAMrole"
}

variable "customer" {
  description = "Customer applied to this role"
  type        = string
  default     = ""
}

variable "tags" {
  description = "Tags applied to this role"
  type        = map(any)
  default     = {}
}

# below are specific modules variables
variable "aws_service_name" {
  type        = string
  description = "The AWS service to which this role is attached"
}

variable "custom_suffix" {
  type        = string
  description = "Additional string appended to the role name. Not all AWS services support custom suffixes."
  default     = null
}
