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
variable "cloud_project_id" {
  description = "The OVH public cloud project id"
  type        = string
}

variable "kube_id" {
  description = "The kube controlplane id"
  type        = string
}

variable "flavor_name" {
  description = "The flavor of OS image to use"
  type        = string
  default     = "b2-7"
}

variable "desired_nodes" {
  description = "Desired number of nodes in the pool"
  type        = number
  default     = 1
}

variable "min_nodes" {
  description = "Minimum number of nodes in the pool"
  type        = number
  default     = 1
}

variable "max_nodes" {
  description = "Maximum number of nodes in the pool"
  type        = number
  default     = 1
}

variable "monthly_billed" {
  description = "Should the nodes be billed on a monthly basis"
  type        = bool
  default     = false
}

variable "anti_affinity" {
  description = "Should the pool use anti affinity features"
  type        = bool
  default     = false
}

variable "autoscale" {
  description = "Enable auto-scaling for the pool"
  type        = bool
  default     = false
}

variable "template" {
  description = "The template to use for the nodepool"
  type        = any
  default     = null
  validation {
    condition = var.template == null || alltrue([
      var.template != null ? contains(keys(var.template), "metadata") : false,
      var.template != null ? contains(keys(var.template), "spec") : false,
      var.template != null ? can(tomap(var.template.metadata)) : false,
      var.template != null ? can(tomap(var.template.spec)) : false
    ])
    error_message = "template must be a map with the keys: metadata and spec."
  }
}
