output "resource_group_name" {
  value = azurerm_backup_protected_vm.this.resource_group_name
}

output "recovery_vault_name" {
  value = azurerm_backup_protected_vm.this.recovery_vault_name
}

output "source_vm_id" {
  value = azurerm_backup_protected_vm.this.source_vm_id
}

output "backup_policy_id" {
  value = azurerm_backup_protected_vm.this.backup_policy_id
}

output "exclude_disk_luns" {
  value = azurerm_backup_protected_vm.this.exclude_disk_luns
}

output "include_disk_luns" {
  value = azurerm_backup_protected_vm.this.include_disk_luns
}

output "protection_state" {
  value = azurerm_backup_protected_vm.this.protection_state
}

output "id" {
  description = "The ID of the Backup Protected Virtual Machine."
  value       = azurerm_backup_protected_vm.this.id
}

