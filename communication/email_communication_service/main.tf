data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}


resource "azurerm_email_communication_service" "this" {

  ########################################
  # required vars
  ########################################
  name                = var.name
  resource_group_name = data.azurerm_resource_group.this.name
  data_location       = var.data_location

  ########################################
  # optional vars
  ########################################
  tags = var.tags
}
