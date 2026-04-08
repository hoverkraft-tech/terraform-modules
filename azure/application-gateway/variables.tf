variable "name" {
  description = "Name applied to this Public IP"
  type        = string
}

variable "customer" {
  description = "Customer applied to this Public IP"
  type        = string
  default     = ""
}

variable "environment" {
  description = "Environment applied to this Public IP"
  type        = string
  default     = ""
}

variable "tags" {
  description = "Tags applied to this Public IP"
  type        = map(any)
  default     = {}
}

# --- below are specific module variables ---
variable "public_ip_allocation_method" {
  description = "TDefines the allocation method of the IP address. Possible values are Static or Dynamic."
  type        = string
  default     = "Static"
}

variable "public_ip_zones" {
  description = " A list of Availability Zones in which this NAT Gateway should be located. Changing this forces a new NAT Gateway to be created"
  type        = list(any)
  default     = null
}

variable "location" {
  description = "Azure region where the Public IP will be created"
  type        = string
}

variable "resource_group_name" {
  description = "The name of the resource group in which to create the Public IP"
  type        = string
}

variable "zones" {
  description = "A list of Availability Zones in which this Public IP should be located"
  type        = list(string)
  default     = []
}

variable "sku_name" {
  description = "The Name of the SKU to use for this Application Gateway. Possible values are Basic, Standard_Small, Standard_Medium, Standard_Large, Standard_v2, WAF_Large, WAF_Medium and WAF_v2"
  type        = string
}

variable "sku_tier" {
  description = "he Tier of the SKU to use for this Application Gateway. Possible values are Basic, Standard_v2, and WAF_v2"
  type        = string
}


variable "capacity" {
  description = "The Capacity of the SKU to use for this Application Gateway"
  type        = number
}

variable "subnet_id" {
  description = "The ID of the Subnet which the Application Gateway should be connected to"
  type        = string
}

variable "http_listeners" {
  description = "Listeners config"
  type = list(object({
    name                  = string
    host_name             = optional(string)
    host_names            = optional(list(string))
    protocol              = string
    ssl_certificate_name  = optional(string)
  }))
}

variable "backend_address_pools" {
  description = "Backend pools config"
  type = list(object({
    name         = string
    fqdns        = optional(list(string))
    ip_addresses = optional(list(string))
  }))
}

variable "request_routing_rules" {
  description = "Routing rules"
  type = list(object({
    name                       = string
    rule_type                  = string
    http_listener_name         = string
    backend_address_pool_name  = string
    backend_http_settings_name = string
    priority                   = number
    rewrite_rule_set_name      = optional(string)
  }))
}

variable "ssl_certificates" {
   description = "SSL certificats"
  type = list(object({
    name                 = string
    key_vault_secret_id  = string
  }))
  default = []
}

variable "rewrite_rule_sets" {
  description = "List of rewrite rule sets for the Application Gateway"
  type = list(object({
    name = string
    rewrite_rules = list(object({
      name          = string
      rule_sequence = number
      conditions = optional(list(object({
        variable    = string
        pattern     = string
        ignore_case = optional(bool, true)
        negate      = optional(bool, false)
      })), [])
      request_header_configurations = optional(list(object({
        header_name  = string
        header_value = string
      })), [])
      response_header_configurations = optional(list(object({
        header_name  = string
        header_value = string
      })), [])
      url_configuration = optional(object({
        path         = optional(string)
        query_string = optional(string)
        components   = optional(string)
        reroute      = optional(bool)
      }))
    }))
  }))
  default = []
}

variable "health_probes" {
  description = "List of health probes for the Application Gateway"
  type = list(object({
    name                                      = string
    protocol                                  = string
    path                                      = string
    interval                                  = optional(number, 30)
    timeout                                   = optional(number, 30)
    unhealthy_threshold                       = optional(number, 3)
    pick_host_name_from_backend_http_settings = optional(bool, false)
    host                                      = optional(string)
    port                                      = optional(number)
    match = optional(object({
      status_code = list(string)
      body        = optional(string)
    }))
  }))
  default = []
}

variable "backend_http_settings" {
  description = "List of backend HTTP settings for the Application Gateway"
  type = list(object({
    name                                = string
    cookie_based_affinity               = string
    port                                = number
    protocol                            = string
    request_timeout                     = optional(number, 30)
    pick_host_name_from_backend_address = bool
    probe_name                          = optional(string)
  }))
  default = []
}

variable "identity_id" {
  description = "ID of an existing user-assigned identity to use for the Application Gateway. If not provided, a new identity will be created."
  type        = string
  default     = null
}

variable "log_analytics_workspace_id" {
  description = "ID of the Log Analytics Workspace to send diagnostics to. If not provided, diagnostics will not be configured."
  type        = string
  default     = null
}

variable "waf_policy" {
  description = "WAF policy configuration for the Application Gateway. Only applicable when sku_tier is WAF or WAF_v2. Uses azurerm_web_application_firewall_policy resource."
  type = object({
    enabled                  = bool
    firewall_mode            = string # Detection or Prevention
    rule_set_type            = optional(string, "OWASP")
    rule_set_version         = string # 3.2, 3.1, 3.0, 2.2.9
    file_upload_limit_mb     = optional(number, 100)
    request_body_check       = optional(bool, true)
    max_request_body_size_kb = optional(number, 128)
    disabled_rule_group = optional(list(object({
      rule_group_name = string
      rules           = optional(list(number))
    })), [])
    exclusion = optional(list(object({
      match_variable          = string
      selector_match_operator = optional(string)
      selector                = optional(string)
    })), [])
  })
  default = null
}
