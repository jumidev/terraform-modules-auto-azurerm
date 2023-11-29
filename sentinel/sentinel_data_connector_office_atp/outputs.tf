output "log_analytics_workspace_id" {
  value = azurerm_sentinel_data_connector_office_atp.this.log_analytics_workspace_id
}

output "name" {
  value = azurerm_sentinel_data_connector_office_atp.this.name
}

output "tenant_id" {
  value = azurerm_sentinel_data_connector_office_atp.this.tenant_id
}

output "id" {
  description = "The ID of the Office ATP Data Connector."
  value       = azurerm_sentinel_data_connector_office_atp.this.id
}

