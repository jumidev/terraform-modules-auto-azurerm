data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}


resource "azurerm_nat_gateway" "this" {

  ########################################
  # required vars
  ########################################
  name                = var.name
  resource_group_name = data.azurerm_resource_group.this.name
  location            = var.location

  ########################################
  # optional vars
  ########################################
  idle_timeout_in_minutes = var.idle_timeout_in_minutes # Default: 4
  sku_name                = var.sku_name                # Default: Standard
  tags                    = var.tags
  zones                   = var.zones
}
