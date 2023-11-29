data "azurerm_eventhub_namespace" "this" {
  name                = var.eventhub_namespace_name
  resource_group_name = var.eventhub_namespace_resource_group_name == null ? null : var.eventhub_namespace_resource_group_name
}
data "azurerm_eventhub" "this" {
  name                = var.eventhub_name
  resource_group_name = var.eventhub_resource_group_name == null ? null : var.eventhub_resource_group_name
  namespace_name      = var.eventhub_namespace_name == null ? null : var.eventhub_namespace_name
}
data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}


resource "azurerm_eventhub_consumer_group" "this" {

  ########################################
  # required vars
  ########################################
  name                = var.name
  namespace_name      = data.azurerm_eventhub_namespace.this.name
  eventhub_name       = data.azurerm_eventhub.this.name
  resource_group_name = data.azurerm_resource_group.this.name

  ########################################
  # optional vars
  ########################################
  user_metadata = var.user_metadata
}
