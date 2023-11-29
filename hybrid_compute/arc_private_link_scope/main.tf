data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}


resource "azurerm_arc_private_link_scope" "this" {

  ########################################
  # required vars
  ########################################
  location            = var.location
  name                = var.name
  resource_group_name = data.azurerm_resource_group.this.name

  ########################################
  # optional vars
  ########################################
  public_network_access_enabled = var.public_network_access_enabled # Default: False
  tags                          = var.tags
}
