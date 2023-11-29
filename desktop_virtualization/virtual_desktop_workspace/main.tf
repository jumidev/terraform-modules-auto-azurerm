data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}


resource "azurerm_virtual_desktop_workspace" "this" {

  ########################################
  # required vars
  ########################################
  name                = var.name
  resource_group_name = data.azurerm_resource_group.this.name
  location            = var.location

  ########################################
  # optional vars
  ########################################
  friendly_name                 = var.friendly_name
  description                   = var.description
  public_network_access_enabled = var.public_network_access_enabled # Default: True
  tags                          = var.tags
}
