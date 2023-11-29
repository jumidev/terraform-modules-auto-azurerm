data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}


resource "azurerm_disk_pool" "this" {

  ########################################
  # required vars
  ########################################
  name                = var.name
  resource_group_name = data.azurerm_resource_group.this.name
  location            = var.location
  zones               = var.zones
  sku_name            = var.sku_name
  subnet_id           = var.subnet_id

  ########################################
  # optional vars
  ########################################
  tags = var.tags
}
