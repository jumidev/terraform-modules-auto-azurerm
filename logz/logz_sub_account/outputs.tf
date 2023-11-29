output "name" {
  value = azurerm_logz_sub_account.this.name
}

output "logz_monitor_id" {
  value = azurerm_logz_sub_account.this.logz_monitor_id
}

output "user" {
  value = azurerm_logz_sub_account.this.user
}

output "enabled" {
  value = azurerm_logz_sub_account.this.enabled
}

output "tags" {
  value = azurerm_logz_sub_account.this.tags
}

output "id" {
  description = "The ID of the logz Sub Account."
  value       = azurerm_logz_sub_account.this.id
}

