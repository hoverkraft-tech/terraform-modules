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

# bellow are specific modules variables
variable "project_id" {
  type        = string
  description = "The id of pci project"
}

variable "vlan_id" {
  type        = number
  description = "The id of the vlan assigned to the vrack"
}

variable "regions" {
  type        = list(any)
  default     = null
  description = "array of OVH pci regions where the network will exists"
}
