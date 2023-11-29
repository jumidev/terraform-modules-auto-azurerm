output "name" {
  value = azurerm_monitor_log_profile.this.name
}

output "categories" {
  value = azurerm_monitor_log_profile.this.categories
}

output "locations" {
  value = azurerm_monitor_log_profile.this.locations
}

output "storage_account_id" {
  value = azurerm_monitor_log_profile.this.storage_account_id
}

output "servicebus_rule_id" {
  value = azurerm_monitor_log_profile.this.servicebus_rule_id
}

output "retention_policy" {
  value = azurerm_monitor_log_profile.this.retention_policy
}

output "id" {
  description = "The ID of the Log Profile."
  value       = azurerm_monitor_log_profile.this.id
}

