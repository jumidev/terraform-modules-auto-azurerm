data "azurerm_notification_hub" "this" {
  name           = var.notification_hub_name
  namespace_name = var.notification_hub_namespace_name != null ? var.notification_hub_namespace_name : var.namespace_name

  resource_group_name = var.notification_hub_resource_group_name != null ? var.notification_hub_resource_group_name : var.resource_group_name

}
data "azurerm_eventhub_namespace" "this" {
  name                = var.eventhub_namespace_name
  resource_group_name = var.eventhub_namespace_resource_group_name == null ? null : var.eventhub_namespace_resource_group_name
}
data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}


resource "azurerm_notification_hub_authorization_rule" "this" {

  ########################################
  # required vars
  ########################################
  name                  = var.name
  notification_hub_name = data.azurerm_notification_hub.this.name
  namespace_name        = data.azurerm_eventhub_namespace.this.name
  resource_group_name   = data.azurerm_resource_group.this.name

  ########################################
  # optional vars
  ########################################
  manage = var.manage # Default: False
  send   = var.send   # Default: False
  listen = var.listen # Default: False
}
