data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}


resource "azurerm_logic_app_integration_account_map" "this" {

  ########################################
  # required vars
  ########################################
  name                     = var.name
  resource_group_name      = data.azurerm_resource_group.this.name
  integration_account_name = var.integration_account_name
  content                  = var.content
  map_type                 = var.map_type

  ########################################
  # optional vars
  ########################################
  metadata = var.metadata
}
