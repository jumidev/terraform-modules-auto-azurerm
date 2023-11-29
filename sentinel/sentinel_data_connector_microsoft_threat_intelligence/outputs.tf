output "name" {
  value = azurerm_sentinel_data_connector_microsoft_threat_intelligence.this.name
}

output "log_analytics_workspace_id" {
  value = azurerm_sentinel_data_connector_microsoft_threat_intelligence.this.log_analytics_workspace_id
}

output "bing_safety_phishing_url_lookback_date" {
  value = azurerm_sentinel_data_connector_microsoft_threat_intelligence.this.bing_safety_phishing_url_lookback_date
}

output "microsoft_emerging_threat_feed_lookback_date" {
  value = azurerm_sentinel_data_connector_microsoft_threat_intelligence.this.microsoft_emerging_threat_feed_lookback_date
}

output "tenant_id" {
  value = azurerm_sentinel_data_connector_microsoft_threat_intelligence.this.tenant_id
}

output "id" {
  description = "The ID of the sentinel."
  value       = azurerm_sentinel_data_connector_microsoft_threat_intelligence.this.id
}

