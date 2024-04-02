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

output "target_iqn" {
  description = "ISCSI Target IQN (iSCSI Qualified Name); example: 'iqn.2005-03.org.iscsi:server'. IQN should follow the format 'iqn.yyyy-mm.<abc>.<pqr>[:xyz]'; supported characters include alphanumeric characters in lower case, hyphen, dot and colon, and the length should between '4' and '223'. Changing this forces a new iSCSI Target to be created. In addition to the Arguments listed above - the following Attributes are exported:"
  value       = azurerm_disk_pool_iscsi_target.this.target_iqn
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

