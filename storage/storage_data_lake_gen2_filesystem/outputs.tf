output "name" {
  value = azurerm_storage_data_lake_gen2_filesystem.this.name
}

output "storage_account_id" {
  value = azurerm_storage_data_lake_gen2_filesystem.this.storage_account_id
}

output "properties" {
  value = azurerm_storage_data_lake_gen2_filesystem.this.properties
}

output "ace" {
  value = azurerm_storage_data_lake_gen2_filesystem.this.ace
}

output "owner" {
  value = azurerm_storage_data_lake_gen2_filesystem.this.owner
}

output "group" {
  value = azurerm_storage_data_lake_gen2_filesystem.this.group
}

output "id" {
  description = "The ID of the Data Lake Gen2 File System."
  value       = azurerm_storage_data_lake_gen2_filesystem.this.id
}

