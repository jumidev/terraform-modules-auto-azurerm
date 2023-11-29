output "name" {
  value = azurerm_monitor_action_rule_suppression.this.name
}

output "resource_group_name" {
  value = azurerm_monitor_action_rule_suppression.this.resource_group_name
}

output "suppression" {
  value = azurerm_monitor_action_rule_suppression.this.suppression
}

output "description" {
  value = azurerm_monitor_action_rule_suppression.this.description
}

output "enabled" {
  value = azurerm_monitor_action_rule_suppression.this.enabled
}

output "scope" {
  value = azurerm_monitor_action_rule_suppression.this.scope
}

output "condition" {
  value = azurerm_monitor_action_rule_suppression.this.condition
}

output "tags" {
  value = azurerm_monitor_action_rule_suppression.this.tags
}

output "id" {
  description = "The ID of the Monitor Action Rule."
  value       = azurerm_monitor_action_rule_suppression.this.id
}

