output "name" {
  value = azurerm_data_share_dataset_data_lake_gen2.this.name
}

output "share_id" {
  value = azurerm_data_share_dataset_data_lake_gen2.this.share_id
}

output "file_system_name" {
  value = azurerm_data_share_dataset_data_lake_gen2.this.file_system_name
}

output "storage_account_id" {
  value = azurerm_data_share_dataset_data_lake_gen2.this.storage_account_id
}

output "file_path" {
  value = azurerm_data_share_dataset_data_lake_gen2.this.file_path
}

output "folder_path" {
  value = azurerm_data_share_dataset_data_lake_gen2.this.folder_path
}

output "id" {
  description = "The resource ID of the Data Share Data Lake Gen2 Dataset."
  value       = azurerm_data_share_dataset_data_lake_gen2.this.id
}

output "display_name" {
  description = "The name of the Data Share Dataset."
  value       = azurerm_data_share_dataset_data_lake_gen2.this.display_name
}

