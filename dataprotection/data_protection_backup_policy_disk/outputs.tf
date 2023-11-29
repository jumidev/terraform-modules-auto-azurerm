output "name" {
  value = azurerm_data_protection_backup_policy_disk.this.name
}

output "vault_id" {
  value = azurerm_data_protection_backup_policy_disk.this.vault_id
}

output "backup_repeating_time_intervals" {
  value = azurerm_data_protection_backup_policy_disk.this.backup_repeating_time_intervals
}

output "default_retention_duration" {
  value = azurerm_data_protection_backup_policy_disk.this.default_retention_duration
}

output "retention_rule" {
  value = azurerm_data_protection_backup_policy_disk.this.retention_rule
}

output "id" {
  description = "The ID of the Backup Policy Disk."
  value       = azurerm_data_protection_backup_policy_disk.this.id
}

