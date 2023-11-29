output "name" {
  value = azurerm_sentinel_alert_rule_threat_intelligence.this.name
}

output "log_analytics_workspace_id" {
  value = azurerm_sentinel_alert_rule_threat_intelligence.this.log_analytics_workspace_id
}

output "alert_rule_template_guid" {
  value = azurerm_sentinel_alert_rule_threat_intelligence.this.alert_rule_template_guid
}

output "enabled" {
  value = azurerm_sentinel_alert_rule_threat_intelligence.this.enabled
}

output "id" {
  description = "The ID of the Sentinel NRT Alert Rule."
  value       = azurerm_sentinel_alert_rule_threat_intelligence.this.id
}

