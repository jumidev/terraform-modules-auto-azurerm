output "name" {
  value = azurerm_data_share_dataset_blob_storage.this.name
}

output "data_share_id" {
  value = azurerm_data_share_dataset_blob_storage.this.data_share_id
}

output "container_name" {
  value = azurerm_data_share_dataset_blob_storage.this.container_name
}

output "storage_account" {
  value = azurerm_data_share_dataset_blob_storage.this.storage_account
}

output "file_path" {
  value = azurerm_data_share_dataset_blob_storage.this.file_path
}

output "folder_path" {
  value = azurerm_data_share_dataset_blob_storage.this.folder_path
}

output "id" {
  description = "The ID of the Data Share Blob Storage Dataset."
  value       = azurerm_data_share_dataset_blob_storage.this.id
}

output "display_name" {
  description = "The name of the Data Share Dataset."
  value       = azurerm_data_share_dataset_blob_storage.this.display_name
}

