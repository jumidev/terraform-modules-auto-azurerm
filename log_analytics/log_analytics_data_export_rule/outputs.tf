output "name" {
  value = azurerm_log_analytics_data_export_rule.this.name
}

output "resource_group_name" {
  value = azurerm_log_analytics_data_export_rule.this.resource_group_name
}

output "workspace_resource_id" {
  value = azurerm_log_analytics_data_export_rule.this.workspace_resource_id
}

output "destination_resource_id" {
  value = azurerm_log_analytics_data_export_rule.this.destination_resource_id
}

output "table_names" {
  value = azurerm_log_analytics_data_export_rule.this.table_names
}

output "enabled" {
  value = azurerm_log_analytics_data_export_rule.this.enabled
}

output "id" {
  description = "The ID of the Log Analytics Data Export Rule."
  value       = azurerm_log_analytics_data_export_rule.this.id
}

output "export_rule_id" {
  description = "The ID of the created Data Export Rule."
  value       = azurerm_log_analytics_data_export_rule.this.export_rule_id
}

