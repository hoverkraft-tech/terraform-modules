variable "name" {
  description = "The name of the helm release"
  type        = string
}

variable "customer" {
  description = "Customer for the current deployment"
  type        = string
  default     = ""
}

variable "environment" {
  description = "Environment for the current deployment"
  type        = string
  default     = ""
}

variable "tags" {
  description = "Default tags to add to resources"
  type        = map(any)
  default     = {}
}

# module specific variables
variable "labels" {
  description = "Labels to add to the secret"
  type        = map(any)
  default     = {}
}

variable "config_path" {
  description = "The kubeconfig to use for the kubernetes provider"
  type        = string
  default     = ""
}

variable "config_context" {
  description = "The context to use for the kubernetes provider"
  type        = string
  default     = null
}
