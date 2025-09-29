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
variable "hosted_zone_id" {
  description = "The ID of the hosted zone"
  type        = string
}

variable "records" {
  description = "The records to be created"
  type = list(object({
    name    = string
    type    = string
    ttl     = number
    records = list(string)
  }))
  default = []
}
