resource "azurerm_user_assigned_identity" "aks_identity" {
  name                = "id-${var.name}"
  location            = var.location
  resource_group_name = var.resource_group_name
  tags                = var.tags
}

resource "azurerm_kubernetes_cluster" "aks" {
  name                       = var.name
  location                   = var.location
  resource_group_name        = var.resource_group_name
  sku_tier                   = var.sku_tier
  dns_prefix                 = var.dns_prefix
  dns_prefix_private_cluster = var.dns_prefix_private_cluster
  private_dns_zone_id        = var.private_dns_zone_id
  kubernetes_version         = var.kubernetes_version
  private_cluster_enabled    = var.private_cluster_enabled
  role_based_access_control_enabled = var.role_based_access_control_enabled

  tags = local.interpolated_tags

  oidc_issuer_enabled       = var.oidc_issuer_enabled
  workload_identity_enabled = var.workload_identity_enabled

  default_node_pool {
    name                    = var.node_pool_name
    node_count              = var.node_count
    max_pods                = var.max_pods
    vm_size                 = var.vm_size
    os_sku                  = var.os_sku
    os_disk_type            = var.os_disk_type
    zones                   = var.zones
    os_disk_size_gb         = var.os_disk_size_gb
    auto_scaling_enabled    = var.auto_scaling_enabled
    min_count               = var.min_count
    max_count               = var.max_count
    host_encryption_enabled = var.host_encryption_enabled
    node_public_ip_enabled  = var.node_public_ip_enabled
    vnet_subnet_id          = var.vnet_subnet_id
    temporary_name_for_rotation = "nodepooltmp"
    upgrade_settings {
      drain_timeout_in_minutes      = var.drain_timeout_in_minutes
      max_surge                     = var.max_surge
      node_soak_duration_in_minutes = var.node_soak_duration_in_minutes
    }
  }

  dynamic "azure_active_directory_role_based_access_control" {
    for_each = var.azure_rbac_enabled ? [1] : []
    content {
      azure_rbac_enabled = true
      admin_group_object_ids = var.admin_group_object_ids
    }
  }

  identity {
    type = "UserAssigned"
    identity_ids = [azurerm_user_assigned_identity.aks_identity.id]
  }

  network_profile {
    network_plugin      = var.network_plugin
    network_policy      = var.network_policy
    network_plugin_mode = var.network_plugin_mode
    network_data_plane  = var.network_data_plane
    pod_cidr            = var.pod_cidr
    outbound_type       = var.outbound_type
    service_cidr        = var.service_cidr
    dns_service_ip      = var.dns_service_ip
    load_balancer_sku   = var.load_balancer_sku
  }
}

resource "azurerm_role_assignment" "aks_dns_contributor" {
  count                = var.private_cluster_enabled && var.private_dns_zone_id != null ? 1 : 0
  scope                = var.private_dns_zone_id
  role_definition_name = "Private DNS Zone Contributor"
  principal_id         = azurerm_user_assigned_identity.aks_identity.principal_id
}

resource "azurerm_role_assignment" "aks_network_contributor" {
  scope                = var.vnet_subnet_id
  role_definition_name = "Network Contributor"
  principal_id         = azurerm_user_assigned_identity.aks_identity.principal_id
}

resource "azurerm_role_assignment" "aks_acr" {
  count                            = var.acr_id != null ? 1 : 0
  principal_id                     = azurerm_kubernetes_cluster.aks.kubelet_identity[0].object_id
  role_definition_name             = "AcrPull"
  scope                            = var.acr_id
  skip_service_principal_aad_check = true
}
