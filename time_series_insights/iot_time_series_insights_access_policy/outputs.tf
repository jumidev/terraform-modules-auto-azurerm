output "name" {
  value = azurerm_iot_time_series_insights_access_policy.this.name
}

output "time_series_insights_environment_id" {
  value = azurerm_iot_time_series_insights_access_policy.this.time_series_insights_environment_id
}

output "principal_object_id" {
  value = azurerm_iot_time_series_insights_access_policy.this.principal_object_id
}

output "roles" {
  value = azurerm_iot_time_series_insights_access_policy.this.roles
}

output "description" {
  value = azurerm_iot_time_series_insights_access_policy.this.description
}

output "id" {
  description = "The ID of the IoT Time Series Insights Access Policy."
  value       = azurerm_iot_time_series_insights_access_policy.this.id
}

