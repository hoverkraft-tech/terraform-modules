variable "name" {
  description = "Name of the resource provider to register"
  type        = string
  default     = "myresourcegroup"
}

variable "customer" {
  description = "Customer applied to this resource provider registration"
  type        = string
  default     = ""
}

variable "environment" {
  description = "Environment applied to this resource provider registration"
  type        = string
  default     = ""
}

variable "tags" {
  description = "Tags applied to this resource provider registration"
  type        = map(any)
  default     = {}
}

# --- below are specific modules variables ---
