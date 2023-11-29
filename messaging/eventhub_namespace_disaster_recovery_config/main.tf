data "azurerm_eventhub_namespace" "this" {
  name                = var.eventhub_namespace_name
  resource_group_name = var.eventhub_namespace_resource_group_name == null ? null : var.eventhub_namespace_resource_group_name
}
data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}


resource "azurerm_eventhub_namespace_disaster_recovery_config" "this" {

  ########################################
  # required vars
  ########################################
  name                 = var.name
  namespace_name       = data.azurerm_eventhub_namespace.this.name
  resource_group_name  = data.azurerm_resource_group.this.name
  partner_namespace_id = var.partner_namespace_id
}
