data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}


resource "azurerm_monitor_private_link_scoped_service" "this" {

  ########################################
  # required vars
  ########################################
  name                = var.name
  resource_group_name = data.azurerm_resource_group.this.name
  scope_name          = var.scope_name
  linked_resource_id  = var.linked_resource_id
}
