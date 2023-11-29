output "name" {
  value = azurerm_data_protection_backup_policy_blob_storage.this.name
}

output "vault_id" {
  value = azurerm_data_protection_backup_policy_blob_storage.this.vault_id
}

output "retention_duration" {
  value = azurerm_data_protection_backup_policy_blob_storage.this.retention_duration
}

output "id" {
  description = "The ID of the Backup Policy Blob Storage."
  value       = azurerm_data_protection_backup_policy_blob_storage.this.id
}

