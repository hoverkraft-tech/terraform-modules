variable "name" {
  description = "Name applied to this instance"
  type        = string
  default     = "myIAMpolicy"
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
    "ManagedBy" = "terraform"
  }
}

# bellow are specific modules variables
variable "thumbprint_list" {
  description = "List of thumbprints to be added to the oidc provider"
  type        = list(string)
}

variable "url" {
  description = "URL of the OIDC provider"
  type        = string
}
