output "name" {
  value = azurerm_data_protection_backup_instance_blob_storage.this.name
}

output "location" {
  value = azurerm_data_protection_backup_instance_blob_storage.this.location
}

output "vault_id" {
  value = azurerm_data_protection_backup_instance_blob_storage.this.vault_id
}

output "storage_account_id" {
  value = azurerm_data_protection_backup_instance_blob_storage.this.storage_account_id
}

output "backup_policy_id" {
  value = azurerm_data_protection_backup_instance_blob_storage.this.backup_policy_id
}

output "id" {
  description = "The ID of the Backup Instance Blob Storage."
  value       = azurerm_data_protection_backup_instance_blob_storage.this.id
}

