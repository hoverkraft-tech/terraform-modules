variable "name" {
  description = "Name applied to this Firewall Policy Rule Collection Group"
  type        = string
}

# tflint-ignore: terraform_unused_declarations
variable "customer" {
  description = "Customer applied to this Firewall Policy Rule Collection Group"
  type        = string
  default     = ""
}

# tflint-ignore: terraform_unused_declarations
variable "environment" {
  description = "Environment applied to this Firewall Policy Rule Collection Group"
  type        = string
  default     = ""
}

# tflint-ignore: terraform_unused_declarations
variable "tags" {
  description = "Tags applied to this Firewall Policy Rule Collection Group"
  type        = map(any)
  default     = {}
}

# --- below are specific module variables ---

variable "firewall_policy_id" {
  description = "The ID of the Firewall Policy where the Rule Collection Group belongs"
  type        = string
}

variable "priority" {
  description = "The priority of the Firewall Policy Rule Collection Group"
  type        = number
  default     = 100
}

variable "network_rule_collections" {
  description = "List of network rule collections"
  type = list(object({
    name     = string
    priority = number
    action   = string
    rules = list(object({
      name                  = string
      protocols             = list(string)
      source_addresses      = optional(list(string))
      source_ip_groups      = optional(list(string))
      destination_addresses = optional(list(string))
      destination_ip_groups = optional(list(string))
      destination_fqdns     = optional(list(string))
      destination_ports     = list(string)
    }))
  }))
  default = []
}

variable "application_rule_collections" {
  description = "List of application rule collections"
  type = list(object({
    name     = string
    priority = number
    action   = string
    rules = list(object({
      name              = string
      source_addresses  = optional(list(string))
      source_ip_groups  = optional(list(string))
      destination_fqdns = optional(list(string))
      protocols = list(object({
        type = string
        port = number
      }))
    }))
  }))
  default = []
}
