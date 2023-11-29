output "name" {
  value = azurerm_monitor_activity_log_alert.this.name
}

output "resource_group_name" {
  value = azurerm_monitor_activity_log_alert.this.resource_group_name
}

output "scopes" {
  value = azurerm_monitor_activity_log_alert.this.scopes
}

output "criteria" {
  value = azurerm_monitor_activity_log_alert.this.criteria
}

output "action" {
  value = azurerm_monitor_activity_log_alert.this.action
}

output "enabled" {
  value = azurerm_monitor_activity_log_alert.this.enabled
}

output "description" {
  value = azurerm_monitor_activity_log_alert.this.description
}

output "tags" {
  value = azurerm_monitor_activity_log_alert.this.tags
}

output "id" {
  description = "The ID of the activity log alert."
  value       = azurerm_monitor_activity_log_alert.this.id
}

