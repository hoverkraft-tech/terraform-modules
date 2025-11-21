variable "name" {
  description = "The name of the github team to be created"
  type        = string
}

variable "customer" {
  description = "Customer for the team to be created"
  type        = string
  default     = ""
}

variable "tags" {
  description = "Default tags to add to the team to be created"
  type        = map(any)
  default     = {}
}

# module specific variables
variable "description" {
  type        = string
  description = "Description of the team to be created"
  default     = ""
}

variable "privacy" {
  type        = string
  description = "The privacy mode (closed or secret) of the team to be created"
  default     = "closed"
}
