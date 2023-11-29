data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}


resource "azurerm_network_ddos_protection_plan" "this" {

  ########################################
  # required vars
  ########################################
  name                = var.name
  location            = var.location
  resource_group_name = data.azurerm_resource_group.this.name

  ########################################
  # optional vars
  ########################################
  tags = var.tags
}
