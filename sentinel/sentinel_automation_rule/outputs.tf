output "name" {
  value = azurerm_sentinel_automation_rule.this.name
}

output "log_analytics_workspace_id" {
  value = azurerm_sentinel_automation_rule.this.log_analytics_workspace_id
}

output "display_name" {
  value = azurerm_sentinel_automation_rule.this.display_name
}

output "order" {
  value = azurerm_sentinel_automation_rule.this.order
}

output "action_incident" {
  value = azurerm_sentinel_automation_rule.this.action_incident
}

output "action_playbook" {
  value = azurerm_sentinel_automation_rule.this.action_playbook
}

output "condition" {
  value = azurerm_sentinel_automation_rule.this.condition
}

output "condition_json" {
  value = azurerm_sentinel_automation_rule.this.condition_json
}

output "enabled" {
  value = azurerm_sentinel_automation_rule.this.enabled
}

output "expiration" {
  value = azurerm_sentinel_automation_rule.this.expiration
}

output "triggers_on" {
  value = azurerm_sentinel_automation_rule.this.triggers_on
}

output "triggers_when" {
  value = azurerm_sentinel_automation_rule.this.triggers_when
}

output "id" {
  description = "The ID of the Sentinel Automation Rule."
  value       = azurerm_sentinel_automation_rule.this.id
}

