variable "name" {
  description = "Name applied to this application"
  type        = string
  default     = "myapplication"
}

variable "customer" {
  description = "Customer applied to this application"
  type        = string
  default     = ""
}

variable "environment" {
  description = "Environment applied to this application"
  type        = string
  default     = ""
}

variable "tags" {
  description = "Tags applied to this application"
  type        = map(any)
  default     = {}
}
