data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}


resource "azurerm_monitor_workspace" "this" {

  ########################################
  # required vars
  ########################################
  name                = var.name
  resource_group_name = data.azurerm_resource_group.this.name
  location            = var.location

  ########################################
  # optional vars
  ########################################
  public_network_access_enabled = var.public_network_access_enabled # Default: True
  tags                          = var.tags
}
