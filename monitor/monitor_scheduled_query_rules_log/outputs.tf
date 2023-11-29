output "name" {
  value = azurerm_monitor_scheduled_query_rules_log.this.name
}

output "resource_group_name" {
  value = azurerm_monitor_scheduled_query_rules_log.this.resource_group_name
}

output "location" {
  value = azurerm_monitor_scheduled_query_rules_log.this.location
}

output "criteria" {
  value = azurerm_monitor_scheduled_query_rules_log.this.criteria
}

output "data_source_id" {
  value = azurerm_monitor_scheduled_query_rules_log.this.data_source_id
}

output "authorized_resource_ids" {
  value = azurerm_monitor_scheduled_query_rules_log.this.authorized_resource_ids
}

output "description" {
  value = azurerm_monitor_scheduled_query_rules_log.this.description
}

output "enabled" {
  value = azurerm_monitor_scheduled_query_rules_log.this.enabled
}

output "tags" {
  value = azurerm_monitor_scheduled_query_rules_log.this.tags
}

output "id" {
  description = "The ID of the scheduled query rule."
  value       = azurerm_monitor_scheduled_query_rules_log.this.id
}

