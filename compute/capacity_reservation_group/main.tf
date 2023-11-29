data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}


resource "azurerm_capacity_reservation_group" "this" {

  ########################################
  # required vars
  ########################################
  name                = var.name
  resource_group_name = data.azurerm_resource_group.this.name
  location            = var.location

  ########################################
  # optional vars
  ########################################
  zones = var.zones
  tags  = var.tags
}
