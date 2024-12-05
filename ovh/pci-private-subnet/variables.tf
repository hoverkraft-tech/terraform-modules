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

variable "environment" {
  description = "Environment applied to this instance"
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
variable "network_id" {
  type        = string
  description = "OVH vrack network id"
}

variable "ip" {
  type        = map(any)
  description = "map of subnet ip elements {start, end, netwok}"
  default = {
    start   = "10.0.0.1"
    end     = "10.0.254.254"
    network = "10.0.0.0/16"
  }
}

variable "dns_nameservers" {
  type        = list(string)
  description = "list of dns servers that will be send by dhcp on this subnet"
  default     = ["8.8.8.8", "8.8.4.4"]
}
