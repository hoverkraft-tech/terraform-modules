variable "name" {
  description = "The name of the efs filesystem"
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
variable "availability_zone_name" {
  description = "The name of the Availability Zone in which to create the file system. Use the azdata Data Source to list the Availability Zones that are available to your account in a specific AWS Region."
  type        = string
  default     = null
}

variable "creation_token" {
  description = "A string of up to 64 ASCII characters that Amazon EFS uses to ensure idempotent creation. This is useful for ensuring a file system is only created once, even if the create call is retried as a result of a timeout or server error. This value is optional and can be omitted."
  type        = string
  default     = null
}

variable "encrypted" {
  description = "Whether the file system is encrypted. The default is false."
  type        = bool
  default     = true
}

variable "kms_key_id" {
  description = "The ID of the AWS Key Management Service (AWS KMS) customer master key (CMK) that was used to protect the encrypted file system."
  type        = string
  default     = null
}

variable "lifecycle_policy" {
  description = "A file system lifecycle policy object (documented below)."
  type        = any
  default     = null
}

variable "performance_mode" {
  description = "The file system performance mode. Can be either generalPurpose or maxIO. The default is generalPurpose."
  type        = string
  default     = null
}

variable "provisioned_throughput_in_mibps" {
  description = "The throughput, measured in MiB/s, that you want to provision for a file system that you're creating. Valid values are 1-1024. Required if ThroughputMode is set to provisioned. The upper limit for throughput is 1024 MiB/s. You can get these limits increased by contacting AWS Support. Must be set to a value greater than 0, and less than or equal to 1024, only if ThroughputMode is set to provisioned. Default value is 1024. Required if ThroughputMode is set to provisioned."
  type        = number
  default     = null
}

variable "throughput_mode" {
  description = "The throughput mode for the file system to be created. There are two throughput modes to choose from for your file system: bursting and provisioned. You can decrease your file system's throughput in Provisioned Throughput mode or change between the throughput modes as long as it’s been more than 24 hours since the last decrease or throughput mode change. Default value is bursting."
  type        = string
  default     = null
}

variable "subnet_ids" {
  description = "A list of VPC subnet IDs."
  type        = list(string)
  default     = []
}

variable "security_groups" {
  description = "A list of up to five VPC security group IDs (that must be for the same VPC as subnets)."
  type        = list(string)
  default     = []
}
