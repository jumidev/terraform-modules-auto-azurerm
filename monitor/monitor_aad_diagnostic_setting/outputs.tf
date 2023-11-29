output "name" {
  value = azurerm_monitor_aad_diagnostic_setting.this.name
}

output "log" {
  value = azurerm_monitor_aad_diagnostic_setting.this.log
}

output "enabled_log" {
  value = azurerm_monitor_aad_diagnostic_setting.this.enabled_log
}

output "eventhub_authorization_rule_id" {
  value = azurerm_monitor_aad_diagnostic_setting.this.eventhub_authorization_rule_id
}

output "eventhub_name" {
  value = azurerm_monitor_aad_diagnostic_setting.this.eventhub_name
}

output "log_analytics_workspace_id" {
  value = azurerm_monitor_aad_diagnostic_setting.this.log_analytics_workspace_id
}

output "storage_account_id" {
  value = azurerm_monitor_aad_diagnostic_setting.this.storage_account_id
}

output "id" {
  description = "The ID of the Monitor Azure Active Directory Diagnostic Setting."
  value       = azurerm_monitor_aad_diagnostic_setting.this.id
}

