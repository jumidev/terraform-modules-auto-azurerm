output "name" {
  value = azurerm_azurerm_sentinel_alert_rule_machine_learning_behavior_analytics.this.name
}

output "log_analytics_workspace_id" {
  value = azurerm_azurerm_sentinel_alert_rule_machine_learning_behavior_analytics.this.log_analytics_workspace_id
}

output "alert_rule_template_guid" {
  value = azurerm_azurerm_sentinel_alert_rule_machine_learning_behavior_analytics.this.alert_rule_template_guid
}

output "enabled" {
  value = azurerm_azurerm_sentinel_alert_rule_machine_learning_behavior_analytics.this.enabled
}

output "id" {
  description = "The ID of the Sentinel Machine Learning Behavior Analytics Alert Rule."
  value       = azurerm_azurerm_sentinel_alert_rule_machine_learning_behavior_analytics.this.id
}

