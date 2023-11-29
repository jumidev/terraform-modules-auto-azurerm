data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}


resource "azurerm_public_ip_prefix" "this" {

  ########################################
  # required vars
  ########################################
  name                = var.name
  resource_group_name = data.azurerm_resource_group.this.name
  location            = var.location

  ########################################
  # optional vars
  ########################################
  sku           = var.sku           # Default: Standard
  ip_version    = var.ip_version    # Default: IPv4
  prefix_length = var.prefix_length # Default: 28
  tags          = var.tags
  zones         = var.zones
}
