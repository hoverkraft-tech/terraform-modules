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
variable "bucket_id" {
  description = "ID of the bucket to apply the lifecycle configuration"
  type        = string
}

# example of rules :
#  [
#    {
#      name   = "Default"
#      status = "Enabled"
#      expiration = {
#        days = 30
#      }
#    },
#  ]
variable "rules" {
  description = "List of rules to apply to the bucket"
  type        = list(any)
  default     = []
}
