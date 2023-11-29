output "name" {
  value = azurerm_backup_policy_vm.this.name
}

output "resource_group_name" {
  value = azurerm_backup_policy_vm.this.resource_group_name
}

output "recovery_vault_name" {
  value = azurerm_backup_policy_vm.this.recovery_vault_name
}

output "id" {
  description = "The ID of the VM Backup Policy."
  value       = azurerm_backup_policy_vm.this.id
}

