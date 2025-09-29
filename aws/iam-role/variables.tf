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

# bellow are specific modules variables
variable "assume_role_policy" {
  type        = string
  description = "The policy that grants an entity permission to assume the role."
  default     = <<_EOP
{
  "Version": "2012-10-17",
  "Statement": [
      {
          "Action": "sts:AssumeRole",
          "Effect": "Allow",
          "Sid": "",
          "Principal": {
              "Service": "ec2.amazonaws.com"
          }
      }
  ]
}
_EOP
}

variable "managed_policies_arns" {
  type        = list(string)
  description = "List of managed policies ARNs to attach to the role"
  default     = []
}

variable "inline_policies" {
  type        = map(any)
  description = "Inline policies to attach to the role"
  default     = {}
}
