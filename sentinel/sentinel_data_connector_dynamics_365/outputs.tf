output "log_analytics_workspace_id" {
  value = azurerm_sentinel_data_connector_dynamics_365.this.log_analytics_workspace_id
}

output "name" {
  value = azurerm_sentinel_data_connector_dynamics_365.this.name
}

output "tenant_id" {
  value = azurerm_sentinel_data_connector_dynamics_365.this.tenant_id
}

output "id" {
  description = "The ID of the Dynamics 365 Data Connector."
  value       = azurerm_sentinel_data_connector_dynamics_365.this.id
}

