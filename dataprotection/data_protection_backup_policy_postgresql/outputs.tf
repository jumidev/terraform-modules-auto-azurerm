output "name" {
  value = azurerm_data_protection_backup_policy_postgresql.this.name
}

output "resource_group_name" {
  value = azurerm_data_protection_backup_policy_postgresql.this.resource_group_name
}

output "vault_name" {
  value = azurerm_data_protection_backup_policy_postgresql.this.vault_name
}

output "backup_repeating_time_intervals" {
  value = azurerm_data_protection_backup_policy_postgresql.this.backup_repeating_time_intervals
}

output "default_retention_duration" {
  value = azurerm_data_protection_backup_policy_postgresql.this.default_retention_duration
}

output "retention_rule" {
  value = azurerm_data_protection_backup_policy_postgresql.this.retention_rule
}

output "id" {
  description = "The ID of the Backup Policy PostgreSQL."
  value       = azurerm_data_protection_backup_policy_postgresql.this.id
}

