resource "azurerm_public_ip" "vpn" {
  name                = var.public_ip_name
  location            = var.location
  resource_group_name = var.resource_group_name
  allocation_method   = var.public_ip_allocation_method
  sku                 = "Standard"
  zones               = var.public_ip_zones
}

resource "azurerm_virtual_network_gateway" "vpn" {
  name                = var.name
  location            = var.location
  resource_group_name = var.resource_group_name
  tags                = local.interpolated_tags

  type     = "Vpn"
  vpn_type = "RouteBased"

  sku           = var.sku
  active_active = false
  enable_bgp    = false

  ip_configuration {
    name                          = "vnetGatewayConfig"
    public_ip_address_id          = azurerm_public_ip.vpn.id
    private_ip_address_allocation = "Dynamic"
    subnet_id                     = var.subnet_id
  }

  vpn_client_configuration {
    address_space = var.address_space
    dynamic "root_certificate" {
      for_each = contains(var.vpn_auth_types, "Certificate") ? [1] : []
      content {
        name             = var.root_certificate_name
        public_cert_data = var.public_cert_data
      }
    }
    vpn_client_protocols = var.vpn_client_protocols
    vpn_auth_types       = var.vpn_auth_types
    aad_tenant           = var.aad_tenant
    aad_issuer           = var.aad_issuer
    aad_audience         = var.aad_audience
  }
}
