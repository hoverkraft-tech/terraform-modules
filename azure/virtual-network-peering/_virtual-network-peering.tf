resource "azurerm_virtual_network_peering" "main" {
  #checkov:skip=CKV_AZURE_183:it's up to the user to provides local dns addresses
  name                                   = var.name
  virtual_network_name                   = var.virtual_network_name
  remote_virtual_network_id              = var.remote_virtual_network_id
  resource_group_name                    = var.resource_group_name
  allow_virtual_network_access           = var.allow_virtual_network_access
  allow_forwarded_traffic                = var.allow_forwarded_traffic
  allow_gateway_transit                  = var.allow_gateway_transit
  local_subnet_names                     = var.local_subnet_names
  only_ipv6_peering_enabled              = var.only_ipv6_peering_enabled
  peer_complete_virtual_networks_enabled = var.peer_complete_virtual_networks_enabled
  remote_subnet_names                    = var.remote_subnet_names
  use_remote_gateways                    = var.use_remote_gateways
}
