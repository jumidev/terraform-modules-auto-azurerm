output "acl_mode" {
  value = azurerm_disk_pool_iscsi_target.this.acl_mode
}

output "disks_pool_id" {
  value = azurerm_disk_pool_iscsi_target.this.disks_pool_id
}

output "name" {
  value = azurerm_disk_pool_iscsi_target.this.name
}

output "target_iqn" {
  value = azurerm_disk_pool_iscsi_target.this.target_iqn
}

output "id" {
  description = "The ID of the iSCSI Target."
  value       = azurerm_disk_pool_iscsi_target.this.id
}

output "endpoints" {
  description = "List of private IPv4 addresses to connect to the iSCSI Target."
  value       = azurerm_disk_pool_iscsi_target.this.endpoints
}

output "port" {
  description = "The port used by iSCSI Target portal group."
  value       = azurerm_disk_pool_iscsi_target.this.port
}

