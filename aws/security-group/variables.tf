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
    "ManagedBy" = "terraform"
  }
}

# bellow are specific modules variables
variable "vpc_id" {
  type        = string
  description = "AWS vpc id"
}

variable "sg_rules" {
  type        = any
  description = "Security group rules"
  default = {
    ingress_ssh = {
      description              = "allow ssh in"
      type                     = "ingress"
      from_port                = 22
      to_port                  = 22
      protocol                 = "tcp"
      cidr_blocks              = ["0.0.0.0/0"]
      ipv6_cidr_blocks         = []
      self                     = false
      source_security_group_id = null
    },
    outbound_all = {
      description              = "allow all outbond traffic"
      type                     = "egress"
      from_port                = 0
      to_port                  = 0
      protocol                 = "-1"
      cidr_blocks              = ["0.0.0.0/0"]
      ipv6_cidr_blocks         = []
      self                     = false
      source_security_group_id = null
    }
  }
}
