variable "name" {
  description = "Name applied to this management group"
  type        = string
  default     = "myresourcegroup"
}

variable "customer" {
  description = "Customer applied to this management group"
  type        = string
  default     = ""
}

variable "environment" {
  description = "Environment applied to this management group"
  type        = string
  default     = ""
}

variable "tags" {
  description = "Tags applied to this management group"
  type        = map(any)
  default     = {}
}

# --- below are specific modules variables ---

variable "parent_management_group_id" {
  type        = string
  description = "The ID of the parent management group under which this management group will be created"
  default     = null
}

variable "subscription_ids" {
  type        = set(string)
  description = "List of subscription IDs to associate with this management group"
  default     = null
}
