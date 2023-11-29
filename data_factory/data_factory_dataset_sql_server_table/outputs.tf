output "name" {
  value = azurerm_data_factory_dataset_sql_server_table.this.name
}

output "data_factory_id" {
  value = azurerm_data_factory_dataset_sql_server_table.this.data_factory_id
}

output "linked_service_name" {
  value = azurerm_data_factory_dataset_sql_server_table.this.linked_service_name
}

output "table_name" {
  value = azurerm_data_factory_dataset_sql_server_table.this.table_name
}

output "folder" {
  value = azurerm_data_factory_dataset_sql_server_table.this.folder
}

output "schema_column" {
  value = azurerm_data_factory_dataset_sql_server_table.this.schema_column
}

output "description" {
  value = azurerm_data_factory_dataset_sql_server_table.this.description
}

output "annotations" {
  value = azurerm_data_factory_dataset_sql_server_table.this.annotations
}

output "parameters" {
  value = azurerm_data_factory_dataset_sql_server_table.this.parameters
}

output "additional_properties" {
  value = azurerm_data_factory_dataset_sql_server_table.this.additional_properties
}

output "id" {
  description = "The ID of the Data Factory SQL Server Table Dataset."
  value       = azurerm_data_factory_dataset_sql_server_table.this.id
}

