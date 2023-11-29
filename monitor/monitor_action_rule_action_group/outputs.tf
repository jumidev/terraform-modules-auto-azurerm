output "name" {
  value = azurerm_monitor_action_rule_action_group.this.name
}

output "resource_group_name" {
  value = azurerm_monitor_action_rule_action_group.this.resource_group_name
}

output "action_group_id" {
  value = azurerm_monitor_action_rule_action_group.this.action_group_id
}

output "description" {
  value = azurerm_monitor_action_rule_action_group.this.description
}

output "enabled" {
  value = azurerm_monitor_action_rule_action_group.this.enabled
}

output "scope" {
  value = azurerm_monitor_action_rule_action_group.this.scope
}

output "condition" {
  value = azurerm_monitor_action_rule_action_group.this.condition
}

output "tags" {
  value = azurerm_monitor_action_rule_action_group.this.tags
}

output "id" {
  description = "The ID of the Monitor Action Rule."
  value       = azurerm_monitor_action_rule_action_group.this.id
}

