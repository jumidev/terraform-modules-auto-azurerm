data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}


resource "azurerm_dev_test_lab" "this" {

  ########################################
  # required vars
  ########################################
  name                = var.name
  resource_group_name = data.azurerm_resource_group.this.name
  location            = var.location

  ########################################
  # optional vars
  ########################################
  storage_type = var.storage_type # Default: Premium
  tags         = var.tags
}
