data "azurerm_eventhub_namespace" "this" {
  name                = var.eventhub_namespace_name
  resource_group_name = var.eventhub_namespace_resource_group_name != null ? var.eventhub_namespace_resource_group_name : var.resource_group_name

}
data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}


resource "azurerm_relay_namespace_authorization_rule" "this" {

  ########################################
  # required vars
  ########################################
  name                = var.name
  namespace_name      = data.azurerm_eventhub_namespace.this.name
  resource_group_name = data.azurerm_resource_group.this.name

  ########################################
  # optional vars
  ########################################
  listen = var.listen # Default: False
  send   = var.send   # Default: False
  manage = var.manage # Default: False
}
