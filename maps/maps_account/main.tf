data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}


resource "azurerm_maps_account" "this" {

  ########################################
  # required vars
  ########################################
  name                = var.name
  resource_group_name = data.azurerm_resource_group.this.name
  sku_name            = var.sku_name

  ########################################
  # optional vars
  ########################################
  local_authentication_enabled = var.local_authentication_enabled # Default: True
  tags                         = var.tags
}
