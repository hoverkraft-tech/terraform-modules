variable "name" {
  description = "Name applied to this instance"
  type        = string
  default     = ""
}

variable "customer" {
  description = "Customer applied to this instance"
  type        = string
  default     = ""
}

variable "environment" {
  description = "Environment applied to this instance"
  type        = string
  default     = ""
}

variable "tags" {
  description = "Tags applied to this instance"
  type        = map(string)
  default = {
    "ManagedBy" = "terraform"
  }
}

# module specific variables
variable "filename" {
  description = "The path where to store the kubeconfig file"
  type        = string
  default     = "/tmp/kube.config"
}

variable "content" {
  description = "Content of the kubeconfig file"
  type        = string
  sensitive   = true
}
