output "iscsi_target_id" {
  value = azurerm_disk_pool_iscsi_target_lun.this.iscsi_target_id
}

output "disk_pool_managed_disk_attachment_id" {
  value = azurerm_disk_pool_iscsi_target_lun.this.disk_pool_managed_disk_attachment_id
}

output "name" {
  value = azurerm_disk_pool_iscsi_target_lun.this.name
}

output "id" {
  description = "The ID of the iSCSI Target LUN."
  value       = azurerm_disk_pool_iscsi_target_lun.this.id
}

output "lun" {
  description = "The Logical Unit Number of the iSCSI Target LUN."
  value       = azurerm_disk_pool_iscsi_target_lun.this.lun
}

