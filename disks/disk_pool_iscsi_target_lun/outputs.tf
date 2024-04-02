output "iscsi_target_id" {
  value = azurerm_disk_pool_iscsi_target_lun.this.iscsi_target_id
}

output "disk_pool_managed_disk_attachment_id" {
  value = azurerm_disk_pool_iscsi_target_lun.this.disk_pool_managed_disk_attachment_id
}

output "name" {
  value = azurerm_disk_pool_iscsi_target_lun.this.name
}

output "name" {
  description = "User defined name for iSCSI LUN. Supported characters include uppercase letters, lowercase letters, numbers, periods, underscores or hyphens. Name should end with an alphanumeric character. The length must be between '1' and '90'. Changing this forces a new iSCSI Target LUN to be created. In addition to the Arguments listed above - the following Attributes are exported:"
  value       = azurerm_disk_pool_iscsi_target_lun.this.name
}

output "id" {
  description = "The ID of the iSCSI Target LUN."
  value       = azurerm_disk_pool_iscsi_target_lun.this.id
}

output "lun" {
  description = "The Logical Unit Number of the iSCSI Target LUN."
  value       = azurerm_disk_pool_iscsi_target_lun.this.lun
}

