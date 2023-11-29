output "name" {
  value = azurerm_monitor_diagnostic_setting.this.name
}

output "target_resource_id" {
  value = azurerm_monitor_diagnostic_setting.this.target_resource_id
}

output "eventhub_name" {
  value = azurerm_monitor_diagnostic_setting.this.eventhub_name
}

output "eventhub_authorization_rule_id" {
  value = azurerm_monitor_diagnostic_setting.this.eventhub_authorization_rule_id
}

output "log" {
  value = azurerm_monitor_diagnostic_setting.this.log
}

output "enabled_log" {
  value = azurerm_monitor_diagnostic_setting.this.enabled_log
}

output "log_analytics_workspace_id" {
  value = azurerm_monitor_diagnostic_setting.this.log_analytics_workspace_id
}

output "metric" {
  value = azurerm_monitor_diagnostic_setting.this.metric
}

output "storage_account_id" {
  value = azurerm_monitor_diagnostic_setting.this.storage_account_id
}

output "log_analytics_destination_type" {
  value = azurerm_monitor_diagnostic_setting.this.log_analytics_destination_type
}

output "partner_solution_id" {
  value = azurerm_monitor_diagnostic_setting.this.partner_solution_id
}

output "id" {
  description = "The ID of the Diagnostic Setting."
  value       = azurerm_monitor_diagnostic_setting.this.id
}

