data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}


resource "azurerm_databox_edge_device" "this" {

  ########################################
  # required vars
  ########################################
  name                = var.name
  resource_group_name = data.azurerm_resource_group.this.name
  location            = var.location
  sku_name            = var.sku_name

  ########################################
  # optional vars
  ########################################
  tags = var.tags
}
