variable "name" {
  description = "Name applied to this Entra group"
  type        = string
  default     = "myresourcegroup"
}

variable "customer" {
  description = "Customer applied to this Entra group"
  type        = string
  default     = ""
}

variable "environment" {
  description = "Environment applied to this Entra group"
  type        = string
  default     = ""
}

variable "tags" {
  description = "Tags applied to this Entra group"
  type        = map(any)
  default     = {}
}

# --- below are specific modules variables ---

variable "description" {
  description = "Description for the Entra group"
  type        = string
  default     = null
}

variable "owners" {
  description = "List of owners for the Entra group"
  type        = list(any)
  default     = []
}

variable "security_enabled" {
  description = "Whether the group is security enabled"
  type        = bool
  default     = true
}

variable "theme" {
  description = "Theme for the Entra group"
  type        = string
  default     = null
}

variable "members" {
  description = "List of members for the Entra group"
  type        = list(any)
  default     = []
}
