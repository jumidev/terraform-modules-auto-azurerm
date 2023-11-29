output "log_analytics_workspace_id" {
  value = azurerm_sentinel_data_connector_threat_intelligence_taxii.this.log_analytics_workspace_id
}

output "name" {
  value = azurerm_sentinel_data_connector_threat_intelligence_taxii.this.name
}

output "display_name" {
  value = azurerm_sentinel_data_connector_threat_intelligence_taxii.this.display_name
}

output "api_root_url" {
  value = azurerm_sentinel_data_connector_threat_intelligence_taxii.this.api_root_url
}

output "collection_id" {
  value = azurerm_sentinel_data_connector_threat_intelligence_taxii.this.collection_id
}

output "user_name" {
  value = azurerm_sentinel_data_connector_threat_intelligence_taxii.this.user_name
}

output "password" {
  value     = azurerm_sentinel_data_connector_threat_intelligence_taxii.this.password
  sensitive = true
}

output "polling_frequency" {
  value = azurerm_sentinel_data_connector_threat_intelligence_taxii.this.polling_frequency
}

output "lookback_date" {
  value = azurerm_sentinel_data_connector_threat_intelligence_taxii.this.lookback_date
}

output "tenant_id" {
  value = azurerm_sentinel_data_connector_threat_intelligence_taxii.this.tenant_id
}

output "id" {
  description = "The ID of the Threat Intelligence TAXII Data Connector."
  value       = azurerm_sentinel_data_connector_threat_intelligence_taxii.this.id
}

