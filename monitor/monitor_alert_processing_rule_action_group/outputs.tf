output "add_action_group_ids" {
  value = azurerm_monitor_alert_processing_rule_action_group.this.add_action_group_ids
}

output "name" {
  value = azurerm_monitor_alert_processing_rule_action_group.this.name
}

output "resource_group_name" {
  value = azurerm_monitor_alert_processing_rule_action_group.this.resource_group_name
}

output "scopes" {
  value = azurerm_monitor_alert_processing_rule_action_group.this.scopes
}

output "condition" {
  value = azurerm_monitor_alert_processing_rule_action_group.this.condition
}

output "description" {
  value = azurerm_monitor_alert_processing_rule_action_group.this.description
}

output "enabled" {
  value = azurerm_monitor_alert_processing_rule_action_group.this.enabled
}

output "schedule" {
  value = azurerm_monitor_alert_processing_rule_action_group.this.schedule
}

output "tags" {
  value = azurerm_monitor_alert_processing_rule_action_group.this.tags
}

output "id" {
  description = "The ID of the Alert Processing Rule."
  value       = azurerm_monitor_alert_processing_rule_action_group.this.id
}

