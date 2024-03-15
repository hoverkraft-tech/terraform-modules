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

variable "lambda_description" {
  description = "Description of the Lambda function"
  type        = string
  default     = ""
}

variable "filename" {
  description = "The path to the function's deployment package within the local filesystem"
  type        = string
  default     = ""
}

variable "iam_role_arn" {
  description = "The ARN of the IAM role that the Lambda function assumes when it executes your function to access any other AWS resources"
  type        = string
}

variable "handler" {
  description = "The function within your code that Lambda calls to begin execution"
  type        = string
  default     = "lambda_function.lambda_handler"
}

variable "runtime" {
  description = "The runtime environment for the Lambda function"
  type        = string
  default     = "python3.8"
}

variable "memory_size" {
  description = "The amount of memory, in MB, that is allocated to your Lambda function"
  type        = number
  default     = 128
}

variable "publish" {
  description = "Whether to publish creation/change as new Lambda Function Version"
  type        = bool
  default     = false
}

variable "timeout" {
  description = "The amount of time that Lambda allows a function to run before stopping it"
  type        = number
  default     = 3
}

variable "reserved_concurrent_executions" {
  description = "The number of simultaneous executions to reserve for the function"
  type        = number
  default     = 1000
}

variable "layers" {
  description = "List of Lambda Layer Version ARNs (maximum of 5) to attach to your Lambda function"
  type        = list(string)
  default     = []
}

variable "vpc_config" {
  description = "List of VPC configuration blocks"
  type = object({
    security_group_ids = list(string)
    subnet_ids         = list(string)
  })
  default = null
}

variable "env_vars" {
  description = "A map that defines environment variables for the Lambda function"
  type        = map(string)
  default     = {}
}

variable "tracing_config_mode" {
  description = "The tracing mode for the function"
  type        = string
  default     = "PassThrough"
}

variable "kms_key_arn" {
  description = "The ARN of the AWS Key Management Service (KMS) key that's used to encrypt your function's environment variables"
  type        = string
  default     = null
}

variable "dead_letter_config" {
  description = "List of dead letter configuration blocks"
  type = object({
    target_arn = string
  })
  default = null
}

variable "code_signing_config_arn" {
  description = "The ARN of the code signing configuration"
  type        = string
  default     = null
}
