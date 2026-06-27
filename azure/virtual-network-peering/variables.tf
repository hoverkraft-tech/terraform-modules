variable "name" {
  description = "Name applied to this virtual network"
  type        = string
}

# tflint-ignore: terraform_unused_declarations
variable "customer" {
  description = "Customer applied to this virtual network"
  type        = string
  default     = ""
}

# tflint-ignore: terraform_unused_declarations
variable "environment" {
  description = "Environment applied to this virtual network"
  type        = string
  default     = ""
}

# tflint-ignore: terraform_unused_declarations
variable "tags" {
  description = "Tags applied to this virtual network"
  type        = map(any)
  default     = {}
}

# --- below are specific modules variables ---

variable "virtual_network_name" {
  description = "The name of the virtual network. Changing this forces a new resource to be created"
  type        = string
}

variable "remote_virtual_network_id" {
  description = "The ID of the remote virtual network. Changing this forces a new resource to be created"
  type        = string
}

variable "resource_group_name" {
  description = "The name of the resource group in which to create the Virtual Network Peering. Changing this forces a new resource to be created"
  type        = string
}

variable "allow_virtual_network_access" {
  description = "Controls if the traffic from the local virtual network can reach the remote virtual network"
  type        = bool
  default     = true
}

variable "allow_forwarded_traffic" {
  description = "Controls if forwarded traffic from VMs in the remote virtual network is allowed."
  type        = bool
  default     = false
}

variable "allow_gateway_transit" {
  description = "Controls gatewayLinks can be used in the remote virtual network’s link to the local virtual network."
  type        = bool
  default     = false
}

variable "local_subnet_names" {
  description = "A list of local Subnet names that are Subnet peered with remote Virtual Network."
  type        = list(string)
  default     = []
}

variable "only_ipv6_peering_enabled" {
  description = "The name of the resource group in which to create the Virtual Network Peering"
  type        = bool
  default     = false
}

variable "peer_complete_virtual_networks_enabled" {
  description = "Specifies whether complete Virtual Network address space is peered. Changing this forces a new resource to be created."
  type        = bool
  default     = true
}

variable "remote_subnet_names" {
  description = "A list of remote Subnet names from remote Virtual Network that are Subnet peered"
  type        = list(string)
  default     = []
}

variable "use_remote_gateways" {
  description = "Controls if remote gateways can be used on the local virtual network."
  type        = bool
  default     = false
}
