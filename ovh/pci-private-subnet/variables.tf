variable "name" {
  description = "Name applied to this instance"
  type        = string
  default     = ""
}

variable "customer" {
  description = "Customer applied to this instance"
  type        = string
  default     = ""
}

variable "tags" {
  description = "Tags applied to this instance"
  type        = map(string)
  default = {
  }
}

# bellow are specific modules variables
variable "cloud_project_id" {
  description = "OVH service name"
  type        = string
}

variable "network_id" {
  type        = string
  description = "ID of the private network"
}

variable "region" {
  type        = string
  description = "OVH PCI region where the subnet will exist"
}

variable "network" {
  type        = string
  description = "Global network in CIDR format"
}

variable "start" {
  type        = string
  description = "First ip for this region"
}

variable "end" {
  type        = string
  description = "Last ip for this region"
}

variable "dhcp" {
  type        = bool
  description = "Enable DHCP"
  default = true
}

variable "no_gateway" {
  type        = bool
  description = "Set to true if you don't want to set a default gateway IP"
  default = false
}
