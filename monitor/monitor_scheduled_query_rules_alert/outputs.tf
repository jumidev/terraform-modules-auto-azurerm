output "name" {
  value = azurerm_monitor_scheduled_query_rules_alert.this.name
}

output "resource_group_name" {
  value = azurerm_monitor_scheduled_query_rules_alert.this.resource_group_name
}

output "location" {
  value = azurerm_monitor_scheduled_query_rules_alert.this.location
}

output "data_source_id" {
  value = azurerm_monitor_scheduled_query_rules_alert.this.data_source_id
}

output "frequency" {
  value = azurerm_monitor_scheduled_query_rules_alert.this.frequency
}

output "query" {
  value = azurerm_monitor_scheduled_query_rules_alert.this.query
}

output "time_window" {
  value = azurerm_monitor_scheduled_query_rules_alert.this.time_window
}

output "trigger" {
  value = azurerm_monitor_scheduled_query_rules_alert.this.trigger
}

output "action" {
  value = azurerm_monitor_scheduled_query_rules_alert.this.action
}

output "authorized_resource_ids" {
  value = azurerm_monitor_scheduled_query_rules_alert.this.authorized_resource_ids
}

output "auto_mitigation_enabled" {
  value = azurerm_monitor_scheduled_query_rules_alert.this.auto_mitigation_enabled
}

output "description" {
  value = azurerm_monitor_scheduled_query_rules_alert.this.description
}

output "enabled" {
  value = azurerm_monitor_scheduled_query_rules_alert.this.enabled
}

output "query_type" {
  value = azurerm_monitor_scheduled_query_rules_alert.this.query_type
}

output "severity" {
  value = azurerm_monitor_scheduled_query_rules_alert.this.severity
}

output "throttling" {
  value = azurerm_monitor_scheduled_query_rules_alert.this.throttling
}

output "tags" {
  value = azurerm_monitor_scheduled_query_rules_alert.this.tags
}

output "id" {
  description = "The ID of the scheduled query rule."
  value       = azurerm_monitor_scheduled_query_rules_alert.this.id
}

