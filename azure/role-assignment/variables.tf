variable "name" {
  description = "Name applied to this role assignment"
  type        = string
  default     = "myresourcegroup"
}

variable "customer" {
  description = "Customer applied to this role assignment"
  type        = string
  default     = ""
}

variable "environment" {
  description = "Environment applied to this role assignment"
  type        = string
  default     = ""
}

variable "tags" {
  description = "Tags applied to this role assignment"
  type        = map(any)
  default     = {}
}

# --- below are specific modules variables ---
variable "principal_id" {
  description = "The ID of the Principal (User, Group or Service Principal) to assign the Role Definition to"
  type        = string
}

variable "role_definition_name" {
  description = "The name of a built-in Role. Changing this forces a new resource to be created"
  type        = string
}

variable "scope" {
  description = "The scope at which the Role Assignment applies to"
  type        = string
}
