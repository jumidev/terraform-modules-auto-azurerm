output "name" {
  value = azurerm_storage_share_directory.this.name
}

output "storage_share_id" {
  value = azurerm_storage_share_directory.this.storage_share_id
}

output "metadata" {
  value = azurerm_storage_share_directory.this.metadata
}

output "id" {
  description = "The ID of the Directory within the File Share."
  value       = azurerm_storage_share_directory.this.id
}

