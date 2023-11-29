output "log_analytics_workspace_id" {
  value = azurerm_sentinel_data_connector_microsoft_defender_advanced_threat_protection.this.log_analytics_workspace_id
}

output "name" {
  value = azurerm_sentinel_data_connector_microsoft_defender_advanced_threat_protection.this.name
}

output "tenant_id" {
  value = azurerm_sentinel_data_connector_microsoft_defender_advanced_threat_protection.this.tenant_id
}

output "id" {
  description = "The ID of the Microsoft Defender Advanced Threat Protection Data Connector."
  value       = azurerm_sentinel_data_connector_microsoft_defender_advanced_threat_protection.this.id
}

