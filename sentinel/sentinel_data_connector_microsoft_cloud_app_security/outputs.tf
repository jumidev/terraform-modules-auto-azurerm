output "log_analytics_workspace_id" {
  value = azurerm_sentinel_data_connector_microsoft_cloud_app_security.this.log_analytics_workspace_id
}

output "name" {
  value = azurerm_sentinel_data_connector_microsoft_cloud_app_security.this.name
}

output "alerts_enabled" {
  value = azurerm_sentinel_data_connector_microsoft_cloud_app_security.this.alerts_enabled
}

output "discovery_logs_enabled" {
  value = azurerm_sentinel_data_connector_microsoft_cloud_app_security.this.discovery_logs_enabled
}

output "tenant_id" {
  value = azurerm_sentinel_data_connector_microsoft_cloud_app_security.this.tenant_id
}

output "id" {
  description = "The ID of the Microsoft Cloud App Security Data Connector."
  value       = azurerm_sentinel_data_connector_microsoft_cloud_app_security.this.id
}

