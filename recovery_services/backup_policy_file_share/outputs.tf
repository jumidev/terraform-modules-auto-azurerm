output "name" {
  value = azurerm_backup_policy_file_share.this.name
}

output "resource_group_name" {
  value = azurerm_backup_policy_file_share.this.resource_group_name
}

output "recovery_vault_name" {
  value = azurerm_backup_policy_file_share.this.recovery_vault_name
}

output "id" {
  description = "The ID of the Azure File Share Backup Policy."
  value       = azurerm_backup_policy_file_share.this.id
}

