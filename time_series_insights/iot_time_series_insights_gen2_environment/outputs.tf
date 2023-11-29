output "name" {
  value = azurerm_iot_time_series_insights_gen2_environment.this.name
}

output "resource_group_name" {
  value = azurerm_iot_time_series_insights_gen2_environment.this.resource_group_name
}

output "location" {
  value = azurerm_iot_time_series_insights_gen2_environment.this.location
}

output "sku_name" {
  value = azurerm_iot_time_series_insights_gen2_environment.this.sku_name
}

output "warm_store_data_retention_time" {
  value = azurerm_iot_time_series_insights_gen2_environment.this.warm_store_data_retention_time
}

output "storage" {
  value = azurerm_iot_time_series_insights_gen2_environment.this.storage
}

output "id_properties" {
  value = azurerm_iot_time_series_insights_gen2_environment.this.id_properties
}

output "tags" {
  value = azurerm_iot_time_series_insights_gen2_environment.this.tags
}

output "id" {
  description = "The ID of the IoT Time Series Insights Gen2 Environment."
  value       = azurerm_iot_time_series_insights_gen2_environment.this.id
}

output "data_access_fqdn" {
  description = "The FQDN used to access the environment data."
  value       = azurerm_iot_time_series_insights_gen2_environment.this.data_access_fqdn
}

