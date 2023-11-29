output "log_analytics_workspace_id" {
  value = azurerm_sentinel_data_connector_threat_intelligence.this.log_analytics_workspace_id
}

output "name" {
  value = azurerm_sentinel_data_connector_threat_intelligence.this.name
}

output "lookback_date" {
  value = azurerm_sentinel_data_connector_threat_intelligence.this.lookback_date
}

output "tenant_id" {
  value = azurerm_sentinel_data_connector_threat_intelligence.this.tenant_id
}

output "id" {
  description = "The ID of the Threat Intelligence Data Connector."
  value       = azurerm_sentinel_data_connector_threat_intelligence.this.id
}

