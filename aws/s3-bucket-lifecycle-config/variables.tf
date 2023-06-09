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

# exemple of rules :
# (
# "rule1" = {
#  status = "Enabled"
#  prefix = "test/"
#  tag = {}
#  transition = {
#    "transition1" = {
#      days = 30
#      storage_class = "GLACIER"
#    }
#  }
#  expiration = {
#    "expiration1" = {
#      date = "2020-01-01" (exclusive)
#      days = 90           (exclusive)
#    }
#  }
# }
# )
variable "rules" {
  description = "List of rules to apply to the bucket"
  type        = list
  default     = []
}
