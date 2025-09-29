variable "name" {
  description = "Name applied to this instance"
  type        = string
  default     = ""
}

variable "customer" {
  description = "Customer for the current deployment"
  type        = string
  default     = ""
}

variable "tags" {
  description = "Default tags to add to resources"
  type        = map(any)
  default     = {}
}

# bellow are specific modules variables
variable "public_key" {
  description = "Public key content"
  type        = string
}

variable "ovh_use_old_ssh_keys" {
  description = "Use old ssh keys behavior (true) or new one (false). Previous behabvior was not linked to openstack ssh-keys. New one does."
  type        = bool
  default     = true # let true be the default for compatibility with previous code
}
