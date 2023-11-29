data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}


resource "azurerm_application_load_balancer" "this" {

  ########################################
  # required vars
  ########################################
  name                = var.name
  resource_group_name = data.azurerm_resource_group.this.name
  location            = var.location

  ########################################
  # optional vars
  ########################################
  tags = var.tags
}
