output "log_analytics_workspace_id" {
  value = azurerm_sentinel_data_connector_office_365.this.log_analytics_workspace_id
}

output "name" {
  value = azurerm_sentinel_data_connector_office_365.this.name
}

output "exchange_enabled" {
  value = azurerm_sentinel_data_connector_office_365.this.exchange_enabled
}

output "sharepoint_enabled" {
  value = azurerm_sentinel_data_connector_office_365.this.sharepoint_enabled
}

output "teams_enabled" {
  value = azurerm_sentinel_data_connector_office_365.this.teams_enabled
}

output "tenant_id" {
  value = azurerm_sentinel_data_connector_office_365.this.tenant_id
}

output "id" {
  description = "The ID of the Office 365 Data Connector."
  value       = azurerm_sentinel_data_connector_office_365.this.id
}

