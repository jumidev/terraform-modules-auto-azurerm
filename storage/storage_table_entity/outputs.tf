output "storage_account_name" {
  value = azurerm_storage_table_entity.this.storage_account_name
}

output "table_name" {
  value = azurerm_storage_table_entity.this.table_name
}

output "partition_key" {
  value = azurerm_storage_table_entity.this.partition_key
}

output "row_key" {
  value = azurerm_storage_table_entity.this.row_key
}

output "entity" {
  value = azurerm_storage_table_entity.this.entity
}

output "id" {
  description = "The ID of the Entity within the Table in the Storage Account."
  value       = azurerm_storage_table_entity.this.id
}

