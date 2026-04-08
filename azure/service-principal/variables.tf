variable "name" {
  description = "Name applied to this service principal"
  type        = string
  default     = ""
}

variable "customer" {
  description = "Customer applied to this service principal"
  type        = string
  default     = ""
}

variable "environment" {
  description = "Environment applied to this service principal"
  type        = string
  default     = ""
}

variable "tags" {
  description = "Tags applied to this service principal"
  type        = map(any)
  default     = {}
}

# --- below are specific module variables ---

variable "description" {
  description = "A description of the service principal"
  type        = string
  default     = ""
}

variable "password_start_date" {
  description = "The start date from which the password is valid, formatted as an RFC3339 date string (e.g. 2018-01-01T01:02:03Z)"
  type        = string
  default     = null
}

variable "password_end_date" {
  description = "The end date until which the password is valid, formatted as an RFC3339 date string (e.g. 2018-01-01T01:02:03Z)"
  type        = string
  default     = null
}

variable "password_end_date_relative" {
  description = "A relative duration for which the password is valid until, for example 240h (10 days) or 2400h30m"
  type        = string
  default     = null
}

