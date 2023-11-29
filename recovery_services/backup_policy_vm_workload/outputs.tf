output "name" {
  value = azurerm_backup_policy_vm_workload.this.name
}

output "resource_group_name" {
  value = azurerm_backup_policy_vm_workload.this.resource_group_name
}

output "recovery_vault_name" {
  value = azurerm_backup_policy_vm_workload.this.recovery_vault_name
}

output "protection_policy" {
  value = azurerm_backup_policy_vm_workload.this.protection_policy
}

output "settings" {
  value = azurerm_backup_policy_vm_workload.this.settings
}

output "workload_type" {
  value = azurerm_backup_policy_vm_workload.this.workload_type
}

output "id" {
  description = "The ID of the Azure VM Workload Backup Policy."
  value       = azurerm_backup_policy_vm_workload.this.id
}

