resource "azurerm_fabric_capacity" "main" {
  name                = var.name
  resource_group_name = var.resource_group_name
  location            = var.location

  sku {
    name = var.sku_name
    tier = "Fabric"
  }

  administration_members = var.administration_members

  tags = local.interpolated_tags
}
