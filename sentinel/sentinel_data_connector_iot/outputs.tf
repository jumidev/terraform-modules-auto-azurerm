output "log_analytics_workspace_id" {
  value = azurerm_sentinel_data_connector_iot.this.log_analytics_workspace_id
}

output "name" {
  value = azurerm_sentinel_data_connector_iot.this.name
}

output "subscription_id" {
  value = azurerm_sentinel_data_connector_iot.this.subscription_id
}

output "id" {
  description = "The ID of the Iot Data Connector."
  value       = azurerm_sentinel_data_connector_iot.this.id
}

