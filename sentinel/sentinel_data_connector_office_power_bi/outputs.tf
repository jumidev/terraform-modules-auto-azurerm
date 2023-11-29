output "log_analytics_workspace_id" {
  value = azurerm_sentinel_data_connector_office_power_bi.this.log_analytics_workspace_id
}

output "name" {
  value = azurerm_sentinel_data_connector_office_power_bi.this.name
}

output "tenant_id" {
  value = azurerm_sentinel_data_connector_office_power_bi.this.tenant_id
}

output "id" {
  description = "The ID of the Office Power BI Data Connector."
  value       = azurerm_sentinel_data_connector_office_power_bi.this.id
}

