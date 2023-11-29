data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}


resource "azurerm_api_connection" "this" {

  ########################################
  # required vars
  ########################################
  managed_api_id      = var.managed_api_id
  name                = var.name
  resource_group_name = data.azurerm_resource_group.this.name

  ########################################
  # optional vars
  ########################################
  display_name     = var.display_name
  parameter_values = var.parameter_values
  tags             = var.tags
}
