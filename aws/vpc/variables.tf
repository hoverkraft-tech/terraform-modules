variable "name" {
  description = "Name to be used on all the resources as identifier"
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
variable "cidr_block" {
  description = "CIDR block to be userd by the VPC"
  type        = string
  default     = "10.1.0.0/16"
}

variable "availability_zones" {
  description = "AWS AZs to be used in the current region"
  type        = list(string)
  default     = ["eu-west-3a", "eu-west-3b", "eu-west-3c"]
}

variable "private_subnets" {
  description = "Private subnets to be created"
  type        = map(any)
  default = {
    "eu-west-3a" = {
      name = "priv-eu-west-3a"
      cidr = "10.1.0.0/24"
    }
    "eu-west-3b" = {
      name = "priv-eu-west-3b"
      cidr = "10.1.2.0/24"
    }
    "eu-west-3c" = {
      name = "priv-eu-west-3c"
      cidr = "10.1.3.0/24"
    }
  }
}

variable "public_subnets" {
  description = "Public subnets to be created"
  type        = map(any)
  default = {
    "eu-west-3a" = {
      name = "pub-eu-west-3a"
      cidr = "10.1.4.0/24"
    }
    "eu-west-3b" = {
      name = "pub-eu-west-3b"
      cidr = "10.1.5.0/24"
    }
    "eu-west-3c" = {
      name = "pub-eu-west-3c"
      cidr = "10.1.6.0/24"
    }
  }
}
