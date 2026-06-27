# tflint-ignore: terraform_unused_declarations
variable "name" {
  description = "Name applied to this Route Table Association"
  type        = string
  default     = ""
}

# tflint-ignore: terraform_unused_declarations
variable "customer" {
  description = "Customer applied to this Route Table Association"
  type        = string
  default     = ""
}

# tflint-ignore: terraform_unused_declarations
variable "environment" {
  description = "Environment applied to this Route Table Association"
  type        = string
  default     = ""
}

# tflint-ignore: terraform_unused_declarations
variable "tags" {
  description = "Tags applied to this Route Table Association"
  type        = map(any)
  default     = {}
}

# --- below are specific module variables ---

variable "subnet_id" {
  description = "The ID of the Subnet"
  type        = string
}

variable "route_table_id" {
  description = "The ID of the Route Table which should be associated with the Subnet"
  type        = string
}
