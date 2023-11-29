data "azurerm_iothub" "this" {
  name                = var.iothub_name
  resource_group_name = var.iothub_resource_group_name == null ? null : var.iothub_resource_group_name
  tags                = var.iothub_tags
}


resource "azurerm_iot_time_series_insights_event_source_iothub" "this" {

  ########################################
  # required vars
  ########################################
  name                     = var.name
  environment_id           = var.environment_id
  location                 = var.location
  iothub_name              = data.azurerm_iothub.this.name
  consumer_group_name      = var.consumer_group_name
  event_source_resource_id = var.event_source_resource_id
  shared_access_key_name   = var.shared_access_key_name
  shared_access_key        = var.shared_access_key

  ########################################
  # optional vars
  ########################################
  timestamp_property_name = var.timestamp_property_name
  tags                    = var.tags
}
