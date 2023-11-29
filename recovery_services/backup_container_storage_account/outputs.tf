output "resource_group_name" {
  value = azurerm_backup_container_storage_account.this.resource_group_name
}

output "recovery_vault_name" {
  value = azurerm_backup_container_storage_account.this.recovery_vault_name
}

output "storage_account_id" {
  value = azurerm_backup_container_storage_account.this.storage_account_id
}

output "id" {
  description = "The ID of the Backup Storage Account Container."
  value       = azurerm_backup_container_storage_account.this.id
}

