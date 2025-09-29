variable "name" {
  description = "Name applied to this instance"
  type        = string
  default     = ""
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

# bellow are specific modules variables
variable "cloud_project_id" {
  description = "Cloud project ID for this cluster"
  type        = string
}

variable "region" {
  description = "Region applied to this cluster"
  type        = string
  default     = ""
}

variable "k8s_version" {
  description = "The kubernetes version for this cluster"
  type        = string
  default     = ""
}

variable "private_network_id" {
  description = "Private network ID for the nodes of this cluster"
  type        = string
  default     = ""
}

variable "default_vrack_gateway" {
  description = "Default vrack gateway for nodes egress"
  type        = string
  default     = ""
}

variable "private_network_routing_as_default" {
  description = "Private network routing used as default if true"
  type        = bool
  default     = false
}

# one of [ALWAYS_UPDATE, MINIMAL_DOWNTIME, NEVER_UPDATE]
variable "update_policy" {
  description = "Update policy for this cluster"
  type        = string
  default     = "ALWAYS_UPDATE"
}
