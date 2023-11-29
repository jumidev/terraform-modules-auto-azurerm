output "name" {
  value = azurerm_iot_time_series_insights_reference_data_set.this.name
}

output "time_series_insights_environment_id" {
  value = azurerm_iot_time_series_insights_reference_data_set.this.time_series_insights_environment_id
}

output "location" {
  value = azurerm_iot_time_series_insights_reference_data_set.this.location
}

output "data_string_comparison_behavior" {
  value = azurerm_iot_time_series_insights_reference_data_set.this.data_string_comparison_behavior
}

output "key_property" {
  value = azurerm_iot_time_series_insights_reference_data_set.this.key_property
}

output "tags" {
  value = azurerm_iot_time_series_insights_reference_data_set.this.tags
}

output "id" {
  description = "The ID of the IoT Time Series Insights Reference Data Set."
  value       = azurerm_iot_time_series_insights_reference_data_set.this.id
}

