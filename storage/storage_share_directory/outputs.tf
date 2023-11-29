output "name" {
  value = azurerm_storage_share_directory.this.name
}

output "share_name" {
  value = azurerm_storage_share_directory.this.share_name
}

output "storage_account_name" {
  value = azurerm_storage_share_directory.this.storage_account_name
}

output "metadata" {
  value = azurerm_storage_share_directory.this.metadata
}

output "id" {
  description = "The ID of the Directory within the File Share."
  value       = azurerm_storage_share_directory.this.id
}

