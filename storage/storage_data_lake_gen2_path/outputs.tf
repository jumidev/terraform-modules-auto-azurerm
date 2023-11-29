output "path" {
  value = azurerm_storage_data_lake_gen2_path.this.path
}

output "filesystem_name" {
  value = azurerm_storage_data_lake_gen2_path.this.filesystem_name
}

output "storage_account_id" {
  value = azurerm_storage_data_lake_gen2_path.this.storage_account_id
}

output "resource" {
  value = azurerm_storage_data_lake_gen2_path.this.resource
}

output "owner" {
  value = azurerm_storage_data_lake_gen2_path.this.owner
}

output "group" {
  value = azurerm_storage_data_lake_gen2_path.this.group
}

output "ace" {
  value = azurerm_storage_data_lake_gen2_path.this.ace
}

output "id" {
  description = "The ID of the Data Lake Gen2 File System."
  value       = azurerm_storage_data_lake_gen2_path.this.id
}

