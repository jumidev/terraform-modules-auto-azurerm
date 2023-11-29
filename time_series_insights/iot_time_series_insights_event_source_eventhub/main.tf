data "azurerm_eventhub" "this" {
  name                = var.eventhub_name
  resource_group_name = var.eventhub_resource_group_name == null ? null : var.eventhub_resource_group_name
  namespace_name      = var.eventhub_namespace_name == null ? null : var.eventhub_namespace_name
}
data "azurerm_eventhub_namespace" "this" {
  name                = var.eventhub_namespace_name
  resource_group_name = var.eventhub_namespace_resource_group_name == null ? null : var.eventhub_namespace_resource_group_name
}


resource "azurerm_iot_time_series_insights_event_source_eventhub" "this" {

  ########################################
  # required vars
  ########################################
  name                     = var.name
  environment_id           = var.environment_id
  location                 = var.location
  eventhub_name            = data.azurerm_eventhub.this.name
  consumer_group_name      = var.consumer_group_name
  event_source_resource_id = var.event_source_resource_id
  namespace_name           = data.azurerm_eventhub_namespace.this.name
  shared_access_key_name   = var.shared_access_key_name
  shared_access_key        = var.shared_access_key

  ########################################
  # optional vars
  ########################################
  timestamp_property_name = var.timestamp_property_name
  tags                    = var.tags
}
