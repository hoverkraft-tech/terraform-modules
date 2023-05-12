# bellow are specific modules variables
variable "path" {
  description = "Password Store path to the secret"
  type        = string
}

variable "data" {
  description = "Additional key-value pairs to store with the password"
  type        = map(string)
  sensitive   = true
  default     = null
}

variable "password" {
  description = "Password to store"
  type        = string
  sensitive   = true
  default     = null
}

variable "yaml" {
  description = "YAML representation of the secret"
  type        = string
  sensitive   = true
  default     = null
}
