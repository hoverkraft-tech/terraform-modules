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
variable "cloud_project_id" {
  description = "OVH service name"
  type        = string
}

variable "description" {
  description = "OVH user description"
  type        = string
  default     = "OVH user"
}

variable "ovh_role_names" {
  description = "OVH user role names"
  type        = list(string)
  default     = []
}
