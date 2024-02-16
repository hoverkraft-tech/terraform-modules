variable "name" {
  description = "The name of the template resource"
  type        = string
  default     = "my-template"
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
variable "bucket_name" {
  description = "The name of the S3 bucket"
  type        = string
}

variable "lambda_function" {
  description = "The lambda function to add to the bucket notification"
  type = list(object({
    lambda_function_arn = string
    events              = list(string)
    filter_prefix       = string
    filter_suffix       = string
  }))
  default = []
}
