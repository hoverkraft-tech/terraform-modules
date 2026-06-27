variable "name" {
  description = "Name applied to this role"
  type        = string
}

variable "customer" {
  description = "Customer applied to this role"
  type        = string
  default     = ""
}

variable "environment" {
  description = "Environment applied to this role"
  type        = string
  default     = ""
}

variable "tags" {
  description = "Tags applied to this role"
  type        = map(any)
  default     = {}
}

# --- below are specific modules variables ---
variable "scope" {
  description = "The scope applied to this role"
  type        = string
}

variable "description" {
  description = "The description applied to this role"
  type        = string
  default     = ""
}

variable "actions" {
  description = "One or more Allowed Actions"
  type        = list(any)
  default     = []
}

variable "data_actions" {
  description = "One or more Allowed Data Actions"
  type        = list(any)
  default     = []
}

variable "not_actions" {
  description = "One or more Allowed Data Actions"
  type        = list(any)
  default     = []
}

variable "not_data_actions" {
  description = "One or more Disallowed Actions"
  type        = list(any)
  default     = []
}

variable "assignable_scopes" {
  description = "One or more Disallowed Data Actions"
  type        = list(any)
  default     = []
}
