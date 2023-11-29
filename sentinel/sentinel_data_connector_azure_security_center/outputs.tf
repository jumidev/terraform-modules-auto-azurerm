output "log_analytics_workspace_id" {
  value = azurerm_sentinel_data_connector_azure_security_center.this.log_analytics_workspace_id
}

output "name" {
  value = azurerm_sentinel_data_connector_azure_security_center.this.name
}

output "subscription_id" {
  value = azurerm_sentinel_data_connector_azure_security_center.this.subscription_id
}

output "id" {
  description = "The ID of the Azure Security Center Data Connector."
  value       = azurerm_sentinel_data_connector_azure_security_center.this.id
}

