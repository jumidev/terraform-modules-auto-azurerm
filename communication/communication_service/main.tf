data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}


resource "azurerm_communication_service" "this" {

  ########################################
  # required vars
  ########################################
  name                = var.name
  resource_group_name = data.azurerm_resource_group.this.name

  ########################################
  # optional vars
  ########################################
  data_location = var.data_location # Default: United States
  tags          = var.tags
}
