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
    "ManagedBy" = "terraform"
  }
}

# bellow are specific modules variables
variable "region" {
  type        = string
  description = "OVH region"
  default     = "GRA"
}

# variable "ovh_service_name" {
#   description = "OVH service name"
#   type        = string
# }

variable "ovh_write_user" {
  description = "OVH user name who will have write access to the bucket"
  type        = string
}
