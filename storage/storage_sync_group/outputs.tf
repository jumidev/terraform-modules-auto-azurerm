output "name" {
  value = azurerm_storage_sync_group.this.name
}

output "storage_sync_id" {
  value = azurerm_storage_sync_group.this.storage_sync_id
}

output "storage_sync_id" {
  description = "The resource ID of the Storage Sync where this Storage Sync Group is. Changing this forces a new Storage Sync Group to be created. In addition to the Arguments listed above - the following Attributes are exported:"
  value       = azurerm_storage_sync_group.this.storage_sync_id
}

output "id" {
  description = "The ID of the Storage Sync Group."
  value       = azurerm_storage_sync_group.this.id
}

