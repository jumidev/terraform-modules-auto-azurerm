output "name" {
  value = azurerm_storage_sync_group.this.name
}

output "storage_sync_id" {
  value = azurerm_storage_sync_group.this.storage_sync_id
}

output "id" {
  description = "The ID of the Storage Sync Group."
  value       = azurerm_storage_sync_group.this.id
}

