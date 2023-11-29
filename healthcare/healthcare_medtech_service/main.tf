data "azurerm_eventhub" "this" {
  name                = var.eventhub_name
  resource_group_name = var.eventhub_resource_group_name
  namespace_name      = var.eventhub_namespace_name
}
data "azurerm_eventhub_consumer_group" "this" {
  name                = var.eventhub_consumer_group_name
  namespace_name      = var.eventhub_consumer_group_namespace_name
  eventhub_name       = var.eventhub_consumer_group_eventhub_name == null ? null : var.eventhub_consumer_group_eventhub_name
  resource_group_name = var.eventhub_consumer_group_resource_group_name == null ? null : var.eventhub_consumer_group_resource_group_name
}


resource "azurerm_healthcare_medtech_service" "this" {

  ########################################
  # required vars
  ########################################
  name                         = var.name
  workspace_id                 = var.workspace_id
  location                     = var.location
  eventhub_namespace_name      = var.eventhub_namespace_name
  eventhub_name                = data.azurerm_eventhub.this.name
  eventhub_consumer_group_name = data.azurerm_eventhub_consumer_group.this.name
  device_mapping_json          = var.device_mapping_json

  ########################################
  # optional vars
  ########################################

  dynamic "identity" { # var.identity
    for_each = var.identity != null ? var.identity : []
    content {
      type         = lookup(identity.value, "type") # (Required) possible values: SystemAssigned
      identity_ids = lookup(identity.value, "identity_ids", null)
    }
  }

  tags = var.tags
}
