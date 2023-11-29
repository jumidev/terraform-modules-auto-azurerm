output "resource_group_name" {
  value = azurerm_backup_protected_file_share.this.resource_group_name
}

output "recovery_vault_name" {
  value = azurerm_backup_protected_file_share.this.recovery_vault_name
}

output "source_storage_account_id" {
  value = azurerm_backup_protected_file_share.this.source_storage_account_id
}

output "source_file_share_name" {
  value = azurerm_backup_protected_file_share.this.source_file_share_name
}

output "backup_policy_id" {
  value = azurerm_backup_protected_file_share.this.backup_policy_id
}

output "id" {
  description = "The ID of the Backup File Share."
  value       = azurerm_backup_protected_file_share.this.id
}

