variable "name" {
  description = "The name of the launch template"
  type        = string
}

variable "customer" {
  description = "Customer for the current deployment"
  type        = string
  default     = ""
}

variable "tags" {
  description = "Default tags to add to resources"
  type        = map(any)
  default     = {}
}

# module specific variables

variable "availability_zone" {
  description = "AWS availability zone where launch template will be created"
  type        = string
  default     = null
}

variable "root_volume_size" {
  description = "Root volume size for the EC2 instances"
  type        = number
  default     = 20
}

variable "root_volume_type" {
  description = "Root volume type for the EC2 instances"
  type        = string
  default     = "gp3"
}

variable "iam_instance_profile" {
  description = "IAM instance profile to attach to the EC2 instances"
  type        = string
  default     = null
}

variable "ami_id" {
  description = "AMI ID to use for the EC2 instances"
  type        = string
  default     = "ami-02df9ea15c1778c9c"
}

variable "instance_type" {
  description = "Instance type for the EC2 instances"
  type        = string
  default     = "t3.medium"
}

variable "key_name" {
  description = "Key name to use for the EC2 instances"
  type        = string
  default     = ""
}

variable "instance_initiated_shutdown_behavior" {
  description = "Instance initiated shutdown behavior for the EC2 instances"
  type        = string
  default     = null
}

variable "monitoring" {
  description = "Enable detailed monitoring for the EC2 instances"
  type        = bool
  default     = false
}

variable "associate_public_ip_address" {
  description = "Associate public IP address for the EC2 instances"
  type        = bool
  default     = null
}

variable "security_groups_ids" {
  description = "Security groups IDs to attach to the EC2 instances"
  type        = list(string)
  default     = []
}

variable "spot_price" {
  description = "Spot price for the EC2 instances"
  type        = string
  default     = null
}

variable "user_data" {
  description = "User data to attach to the EC2 instances"
  type        = string
  default     = null
}
