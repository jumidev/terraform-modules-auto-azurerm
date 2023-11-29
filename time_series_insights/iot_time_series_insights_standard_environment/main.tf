data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}


resource "azurerm_iot_time_series_insights_standard_environment" "this" {

  ########################################
  # required vars
  ########################################
  name                = var.name
  resource_group_name = data.azurerm_resource_group.this.name
  location            = var.location
  sku_name            = var.sku_name
  data_retention_time = var.data_retention_time

  ########################################
  # optional vars
  ########################################
  storage_limit_exceeded_behavior = var.storage_limit_exceeded_behavior # Default: PurgeOldData
  partition_key                   = var.partition_key
  tags                            = var.tags
}
