data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}


resource "azurerm_powerbi_embedded" "this" {

  ########################################
  # required vars
  ########################################
  name                = var.name
  resource_group_name = data.azurerm_resource_group.this.name
  location            = var.location
  sku_name            = var.sku_name
  administrators      = var.administrators

  ########################################
  # optional vars
  ########################################
  mode = var.mode # Default: Gen1
  tags = var.tags
}
