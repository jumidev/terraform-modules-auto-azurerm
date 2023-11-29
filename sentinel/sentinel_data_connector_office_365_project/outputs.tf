output "log_analytics_workspace_id" {
  value = azurerm_sentinel_data_connector_office_365_project.this.log_analytics_workspace_id
}

output "name" {
  value = azurerm_sentinel_data_connector_office_365_project.this.name
}

output "tenant_id" {
  value = azurerm_sentinel_data_connector_office_365_project.this.tenant_id
}

output "id" {
  description = "The ID of the Office 365 Project Data Connector."
  value       = azurerm_sentinel_data_connector_office_365_project.this.id
}

