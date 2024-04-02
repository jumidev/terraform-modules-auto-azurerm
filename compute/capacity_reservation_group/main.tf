

resource "azurerm_capacity_reservation_group" "this" {

  ########################################
  # required vars
  ########################################
  name                = var.name
  resource_group_name = var.resource_group_name
  location            = var.location

  ########################################
  # optional vars
  ########################################
  zones = var.zones
  tags  = var.tags
}
