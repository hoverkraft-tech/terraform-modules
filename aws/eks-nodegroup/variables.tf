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
variable "ami_type" {
  description = "The type of AMI to use for the launch template"
  type        = string
  default     = "CUSTOM"
}

variable "capacity_type" {
  description = "The type of capacity to use for the launch template"
  type        = string
  default     = "ON_DEMAND"
}

variable "cluster_name" {
  description = "The name of the cluster to use for the launch template"
  type        = string
}

variable "disk_size" {
  description = "The size of the disk to use for the launch template"
  type        = number
  default     = null
}

variable "force_update_version" {
  description = "Force a new version of the launch template to be created"
  type        = bool
  default     = false
}

variable "instance_types" {
  description = "The instance types to use for the launch template"
  type        = list(string)
  default     = null
}

variable "labels" {
  description = "Labels to add to the node group"
  type        = map(any)
  default     = {}
}

variable "node_group_name_prefix" {
  description = "Prefix to use for generated node group names"
  type        = string
  default     = null
}

variable "node_role_arn" {
  description = "The ARN of the role to use for the launch template"
  type        = string
}

variable "release_version" {
  description = "The release version to use for the launch template"
  type        = string
  default     = null
}

variable "subnet_ids" {
  description = "The subnet IDs to use for the node group"
  type        = list(string)
}

variable "taints" {
  description = "Taints to be applied to the node group"
  type = list(object({
    key    = string
    value  = string
    effect = string
  }))
  default = []
}

variable "k8s_version" {
  description = "The version of kubernetes to use"
  type        = string
  default     = null
}

variable "launch_template_id" {
  description = "The ID of the launch template to use"
  type        = string
  default     = null
}

variable "launch_template_version" {
  description = "The version of the launch template to use"
  type        = string
  default     = null
}

variable "remote_access" {
  description = "The remote access configuration to use for the launch template"
  type = object({
    ec2_ssh_key               = string
    source_security_group_ids = list(string)
  })
  default = null
}

variable "desired_size" {
  description = "The desired size of the node group"
  type        = number
  default     = 1
}

variable "max_size" {
  description = "The maximum size of the node group"
  type        = number
  default     = 1
}

variable "min_size" {
  description = "The minimum size of the node group"
  type        = number
  default     = 1
}

variable "update_max_unavailable" {
  description = "The maximum number of nodes that can be unavailable during an update"
  type        = string
  default     = "1"
}

variable "update_max_unavailable_percentage" {
  description = "The maximum percentage of nodes that can be unavailable during an update"
  type        = number
  default     = null
}
