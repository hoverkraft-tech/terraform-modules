resource "azurerm_user_assigned_identity" "agw_identity" {
  count               = var.identity_id == null ? 1 : 0
  name                = "id-${var.name}"
  location            = var.location
  resource_group_name = var.resource_group_name
  tags = local.interpolated_tags
}

resource "azurerm_web_application_firewall_policy" "waf" {
  count               = var.waf_policy != null ? 1 : 0
  name                = "waf-${var.name}"
  location            = var.location
  resource_group_name = var.resource_group_name
  tags = local.interpolated_tags

  policy_settings {
    enabled                     = var.waf_policy.enabled
    mode                        = var.waf_policy.firewall_mode
    request_body_check          = var.waf_policy.request_body_check
    file_upload_limit_in_mb     = var.waf_policy.file_upload_limit_mb
    max_request_body_size_in_kb = var.waf_policy.max_request_body_size_kb
  }

  managed_rules {
    managed_rule_set {
      type    = var.waf_policy.rule_set_type
      version = var.waf_policy.rule_set_version

      dynamic "rule_group_override" {
        for_each = var.waf_policy.disabled_rule_group
        content {
          rule_group_name = rule_group_override.value.rule_group_name

          dynamic "rule" {
            for_each = rule_group_override.value.rules != null ? rule_group_override.value.rules : []
            content {
              id      = rule.value
              enabled = false
            }
          }
        }
      }
    }

    dynamic "exclusion" {
      for_each = var.waf_policy.exclusion
      content {
        match_variable          = exclusion.value.match_variable
        selector_match_operator = exclusion.value.selector_match_operator
        selector                = exclusion.value.selector
      }
    }
  }
}

resource "azurerm_public_ip" "agw_ip" {
  name                = "pip-${var.name}"
  location            = var.location
  resource_group_name = var.resource_group_name
  allocation_method   = var.public_ip_allocation_method
  sku                 = "Standard"
  zones               = var.public_ip_zones
}

resource "azurerm_application_gateway" "agw" {
  name                       = var.name
  location                   = var.location
  resource_group_name        = var.resource_group_name
  zones                      = var.zones
  firewall_policy_id         = var.waf_policy != null ? azurerm_web_application_firewall_policy.waf[0].id : null

  sku {
    name     = var.sku_name
    tier     = var.sku_tier
    capacity = var.capacity
  }

  identity {
    type         = "UserAssigned"
    identity_ids = [var.identity_id != null ? var.identity_id : azurerm_user_assigned_identity.agw_identity[1].id]
  }

  gateway_ip_configuration {
    name      = "gwip-${var.name}"
    subnet_id = var.subnet_id
  }

  frontend_port {
    name = "http"
    port = 80
  }

  frontend_port {
    name = "https"
    port = 443
  }

  frontend_ip_configuration {
    name                 = "feip-${var.name}"
    public_ip_address_id = azurerm_public_ip.agw_ip.id
  }

  dynamic "ssl_certificate" {
    for_each = var.ssl_certificates
    content {
      name                = ssl_certificate.value.name
      key_vault_secret_id = ssl_certificate.value.key_vault_secret_id
    }
  }

  dynamic "http_listener" {
    for_each = var.http_listeners
    content {
      name                           = http_listener.value.name
      frontend_ip_configuration_name = "feip-${var.name}"
      frontend_port_name             = http_listener.value.protocol == "Https" ? "https" : "http"
      protocol                       = http_listener.value.protocol
      host_name                      = http_listener.value.host_name
      host_names                     = http_listener.value.host_names
      ssl_certificate_name           = http_listener.value.ssl_certificate_name
    }
  }

  dynamic "probe" {
    for_each = var.health_probes
    content {
      name                                      = probe.value.name
      protocol                                  = probe.value.protocol
      path                                      = probe.value.path
      interval                                  = lookup(probe.value, "interval", 30)
      timeout                                   = lookup(probe.value, "timeout", 30)
      unhealthy_threshold                       = lookup(probe.value, "unhealthy_threshold", 3)
      pick_host_name_from_backend_http_settings = lookup(probe.value, "pick_host_name_from_backend_http_settings", false)
      host                                      = lookup(probe.value, "host", null)
      port                                      = lookup(probe.value, "port", null)

      dynamic "match" {
        for_each = lookup(probe.value, "match", null) != null ? [probe.value.match] : []
        content {
          status_code = match.value.status_code
          body        = lookup(match.value, "body", null)
        }
      }
    }
  }

  dynamic "backend_http_settings" {
    for_each = var.backend_http_settings
    content {
      name                  = backend_http_settings.value.name
      cookie_based_affinity = backend_http_settings.value.cookie_based_affinity
      port                  = backend_http_settings.value.port
      protocol              = backend_http_settings.value.protocol
      request_timeout       = lookup(backend_http_settings.value, "request_timeout", 30)
      pick_host_name_from_backend_address = backend_http_settings.value.pick_host_name_from_backend_address
      probe_name            = lookup(backend_http_settings.value, "probe_name", null)
    }
  }

  dynamic "backend_address_pool" {
    for_each = var.backend_address_pools
    content {
      name         = backend_address_pool.value.name
      fqdns        = backend_address_pool.value.fqdns
      ip_addresses = backend_address_pool.value.ip_addresses
    }
  }

  dynamic "rewrite_rule_set" {
    for_each = var.rewrite_rule_sets
    content {
      name = rewrite_rule_set.value.name

      dynamic "rewrite_rule" {
        for_each = rewrite_rule_set.value.rewrite_rules
        content {
          name          = rewrite_rule.value.name
          rule_sequence = rewrite_rule.value.rule_sequence

          dynamic "condition" {
            for_each = lookup(rewrite_rule.value, "conditions", [])
            content {
              variable    = condition.value.variable
              pattern     = condition.value.pattern
              ignore_case = lookup(condition.value, "ignore_case", true)
              negate      = lookup(condition.value, "negate", false)
            }
          }

          dynamic "request_header_configuration" {
            for_each = lookup(rewrite_rule.value, "request_header_configurations", [])
            content {
              header_name  = request_header_configuration.value.header_name
              header_value = request_header_configuration.value.header_value
            }
          }

          dynamic "response_header_configuration" {
            for_each = lookup(rewrite_rule.value, "response_header_configurations", [])
            content {
              header_name  = response_header_configuration.value.header_name
              header_value = response_header_configuration.value.header_value
            }
          }

          dynamic "url" {
            for_each = lookup(rewrite_rule.value, "url_configuration", null) != null ? [rewrite_rule.value.url_configuration] : []
            content {
              path         = lookup(url.value, "path", null)
              query_string = lookup(url.value, "query_string", null)
              components   = lookup(url.value, "components", null)
              reroute      = lookup(url.value, "reroute", null)
            }
          }
        }
      }
    }
  }

  dynamic "request_routing_rule" {
    for_each = var.request_routing_rules
    content {
      name                       = request_routing_rule.value.name
      rule_type                  = request_routing_rule.value.rule_type
      http_listener_name         = request_routing_rule.value.http_listener_name
      backend_address_pool_name  = request_routing_rule.value.backend_address_pool_name
      backend_http_settings_name = request_routing_rule.value.backend_http_settings_name
      priority                   = request_routing_rule.value.priority
      rewrite_rule_set_name      = request_routing_rule.value.rewrite_rule_set_name
    }
  }

}

resource "azurerm_monitor_diagnostic_setting" "agw_diagnostics" {
  count                      = var.log_analytics_workspace_id != null ? 1 : 0
  name                       = "diag-${var.name}"
  target_resource_id         = azurerm_application_gateway.agw.id
  log_analytics_workspace_id = var.log_analytics_workspace_id

  enabled_log {
    category = "ApplicationGatewayAccessLog"
  }

  enabled_log {
    category = "ApplicationGatewayPerformanceLog"
  }

  enabled_log {
    category = "ApplicationGatewayFirewallLog"
  }
}
