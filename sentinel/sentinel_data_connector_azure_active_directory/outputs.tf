output "log_analytics_workspace_id" {
  value = azurerm_sentinel_data_connector_azure_active_directory.this.log_analytics_workspace_id
}

output "name" {
  value = azurerm_sentinel_data_connector_azure_active_directory.this.name
}

output "tenant_id" {
  value = azurerm_sentinel_data_connector_azure_active_directory.this.tenant_id
}

output "id" {
  description = "The ID of the Azure Active Directory Data Connector."
  value       = azurerm_sentinel_data_connector_azure_active_directory.this.id
}

