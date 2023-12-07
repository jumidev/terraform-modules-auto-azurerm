data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}


resource "azurerm_load_test" "this" {

  ########################################
  # required vars
  ########################################
  location            = var.location
  name                = var.name
  resource_group_name = data.azurerm_resource_group.this.name

  ########################################
  # optional vars
  ########################################
  description = var.description
  identity    = var.identity
  tags        = var.tags
}
