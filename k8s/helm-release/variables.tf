variable "name" {
  description = "The name of the helm release"
  type        = string
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
variable "kubeconfig_paths" {
  description = "List of kubeconfig paths to use for the current deployment"
  type        = list(string)
  default     = []
}

variable "kubeconfig_context" {
  description = "Kubeconfig context to use for the current deployment"
  type        = string
  default     = null
}

variable "repository" {
  description = "Repository to use for the current deployment"
  type        = string
  default     = ""
}

variable "chart" {
  description = "Chart to use for the current deployment"
  type        = string
  default     = ""
}

variable "chart_version" {
  description = "Version of the chart to use for the current deployment"
  type        = string
  default     = ""
}

variable "namespace" {
  description = "Namespace to use for the current deployment"
  type        = string
  default     = ""
}

variable "sets" {
  description = "List of sets to use for the current deployment"
  type        = list(map(string))
  default     = []
}

variable "values" {
  description = "List of values to use for the current deployment"
  type        = list(string)
  default     = []
}

variable "atomic" {
  description = "Atomic deployment"
  type        = bool
  default     = false
}

variable "cleanup_on_fail" {
  description = "Cleanup on fail"
  type        = bool
  default     = false
}

variable "create_namespace" {
  description = "Create namespace"
  type        = bool
  default     = true
}

variable "wait" {
  description = "Wait for deployment to complete"
  type        = bool
  default     = true
}
