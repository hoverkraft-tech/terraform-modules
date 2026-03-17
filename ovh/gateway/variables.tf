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

# below are specific modules variables
variable "cloud_project_id" {
  description = "The OVH public cloud project id"
  type        = string
}

variable "model" {
  type        = string
  description = "Model of the gateway"
}

variable "region" {
  type        = string
  description = "Region of the gateway"
}

variable "network_uuid" {
  type        = string
  description = "UUID of the private network"
}

variable "subnet_id" {
  type        = string
  description = "ID of the subnet"
}
