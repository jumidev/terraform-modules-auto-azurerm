output "name" {
  value = azurerm_data_protection_backup_instance_disk.this.name
}

output "location" {
  value = azurerm_data_protection_backup_instance_disk.this.location
}

output "vault_id" {
  value = azurerm_data_protection_backup_instance_disk.this.vault_id
}

output "disk_id" {
  value = azurerm_data_protection_backup_instance_disk.this.disk_id
}

output "snapshot_resource_group_name" {
  value = azurerm_data_protection_backup_instance_disk.this.snapshot_resource_group_name
}

output "backup_policy_id" {
  value = azurerm_data_protection_backup_instance_disk.this.backup_policy_id
}

output "id" {
  description = "The ID of the Backup Instance Disk."
  value       = azurerm_data_protection_backup_instance_disk.this.id
}

