data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}


resource "azurerm_monitor_data_collection_endpoint" "this" {

  ########################################
  # required vars
  ########################################
  location            = var.location
  name                = var.name
  resource_group_name = data.azurerm_resource_group.this.name

  ########################################
  # optional vars
  ########################################
  description                   = var.description
  kind                          = var.kind
  public_network_access_enabled = var.public_network_access_enabled # Default: True
  tags                          = var.tags
}
