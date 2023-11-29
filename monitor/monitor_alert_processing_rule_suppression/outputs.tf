output "name" {
  value = azurerm_monitor_alert_processing_rule_suppression.this.name
}

output "resource_group_name" {
  value = azurerm_monitor_alert_processing_rule_suppression.this.resource_group_name
}

output "scopes" {
  value = azurerm_monitor_alert_processing_rule_suppression.this.scopes
}

output "condition" {
  value = azurerm_monitor_alert_processing_rule_suppression.this.condition
}

output "description" {
  value = azurerm_monitor_alert_processing_rule_suppression.this.description
}

output "enabled" {
  value = azurerm_monitor_alert_processing_rule_suppression.this.enabled
}

output "schedule" {
  value = azurerm_monitor_alert_processing_rule_suppression.this.schedule
}

output "tags" {
  value = azurerm_monitor_alert_processing_rule_suppression.this.tags
}

output "id" {
  description = "The ID of the Alert Processing Rule."
  value       = azurerm_monitor_alert_processing_rule_suppression.this.id
}

