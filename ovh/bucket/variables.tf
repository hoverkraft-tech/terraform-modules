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

# below are specific modules variables
variable "region_name" {
  description = "Region (in uppercase) applied to this bucket"
  type        = string
}

variable "cloud_project_id" {
  description = "Cloud project ID for this bucket"
  type        = string
}

variable "owner_id" {
  description = "Container owner user ID for this bucket"
  type        = string
  default     = ""
}

variable "versioning_enabled" {
  description = "A boolean that indicates whether this bucket has versioning enabled."
  type        = bool
  default     = true
}

variable "encryption_enabled" {
  description = "A boolean that indicates whether this bucket has encryption enabled."
  type        = bool
  default     = true
}
