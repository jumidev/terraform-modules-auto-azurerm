

resource "azurerm_virtual_network_gateway" "this" {

  ########################################
  # required vars
  ########################################
  ip_configuration    = var.ip_configuration
  location            = var.location
  name                = var.name
  resource_group_name = var.resource_group_name
}
