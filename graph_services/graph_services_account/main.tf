data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}


resource "azurerm_graph_services_account" "this" {

  ########################################
  # required vars
  ########################################
  name                = var.name
  resource_group_name = data.azurerm_resource_group.this.name
  application_id      = var.application_id

  ########################################
  # optional vars
  ########################################
  tags = var.tags
}
