variable "name" {
  description = "The name of the template resource"
  type        = string
  default     = "my-template"
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

# module specific variables
variable "filename" {
  type        = string
  description = "full filepath to be used"
}

variable "content" {
  type        = string
  description = "content to be written in the local file"
}
