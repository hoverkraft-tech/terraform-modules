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

# policy example
# {
#   "Version": "2012-10-17",
#   "Statement": [
#     {
#       "Effect": "Allow",
#       "Principal": {
#         "AWS": "arn:aws:iam::elb-account-id:root"
#       },
#       "Action": "s3:PutObject",
#       "Resource": "arn:aws:s3:::bucket-name/prefix/AWSLogs/your-aws-account-id/*"
#     }
#   ]
# }
variable "bucket_policy" {
  description = "policy (json) to apply to the bucket"
  type        = string
}
