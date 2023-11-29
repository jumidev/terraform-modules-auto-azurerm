output "name" {
  value = azurerm_iot_time_series_insights_standard_environment.this.name
}

output "resource_group_name" {
  value = azurerm_iot_time_series_insights_standard_environment.this.resource_group_name
}

output "location" {
  value = azurerm_iot_time_series_insights_standard_environment.this.location
}

output "sku_name" {
  value = azurerm_iot_time_series_insights_standard_environment.this.sku_name
}

output "data_retention_time" {
  value = azurerm_iot_time_series_insights_standard_environment.this.data_retention_time
}

output "storage_limit_exceeded_behavior" {
  value = azurerm_iot_time_series_insights_standard_environment.this.storage_limit_exceeded_behavior
}

output "partition_key" {
  value = azurerm_iot_time_series_insights_standard_environment.this.partition_key
}

output "tags" {
  value = azurerm_iot_time_series_insights_standard_environment.this.tags
}

output "id" {
  description = "The ID of the IoT Time Series Insights Standard Environment."
  value       = azurerm_iot_time_series_insights_standard_environment.this.id
}

