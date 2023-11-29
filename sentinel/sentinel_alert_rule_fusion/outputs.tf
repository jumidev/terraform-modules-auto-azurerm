output "name" {
  value = azurerm_sentinel_alert_rule_fusion.this.name
}

output "log_analytics_workspace_id" {
  value = azurerm_sentinel_alert_rule_fusion.this.log_analytics_workspace_id
}

output "alert_rule_template_guid" {
  value = azurerm_sentinel_alert_rule_fusion.this.alert_rule_template_guid
}

output "enabled" {
  value = azurerm_sentinel_alert_rule_fusion.this.enabled
}

output "source" {
  value = azurerm_sentinel_alert_rule_fusion.this.source
}

output "id" {
  description = "The ID of the Sentinel Fusion Alert Rule."
  value       = azurerm_sentinel_alert_rule_fusion.this.id
}

