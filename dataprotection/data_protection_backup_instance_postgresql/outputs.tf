output "name" {
  value = azurerm_data_protection_backup_instance_postgresql.this.name
}

output "location" {
  value = azurerm_data_protection_backup_instance_postgresql.this.location
}

output "vault_id" {
  value = azurerm_data_protection_backup_instance_postgresql.this.vault_id
}

output "database_id" {
  value = azurerm_data_protection_backup_instance_postgresql.this.database_id
}

output "backup_policy_id" {
  value = azurerm_data_protection_backup_instance_postgresql.this.backup_policy_id
}

output "database_credential_key_vault_secret_id" {
  value     = azurerm_data_protection_backup_instance_postgresql.this.database_credential_key_vault_secret_id
  sensitive = true
}

output "id" {
  description = "The ID of the Backup Instance PostgreSQL."
  value       = azurerm_data_protection_backup_instance_postgresql.this.id
}

