output "log_analytics_workspace_id" {
  value = azurerm_sentinel_data_connector_office_irm.this.log_analytics_workspace_id
}

output "name" {
  value = azurerm_sentinel_data_connector_office_irm.this.name
}

output "tenant_id" {
  value = azurerm_sentinel_data_connector_office_irm.this.tenant_id
}

output "id" {
  description = "The ID of the Office IRM Data Connector."
  value       = azurerm_sentinel_data_connector_office_irm.this.id
}

