output "name" {
  value = azurerm_data_factory_dataset_azure_sql_table.this.name
}

output "data_factory_id" {
  value = azurerm_data_factory_dataset_azure_sql_table.this.data_factory_id
}

output "linked_service_id" {
  value = azurerm_data_factory_dataset_azure_sql_table.this.linked_service_id
}

output "schema" {
  value = azurerm_data_factory_dataset_azure_sql_table.this.schema
}

output "table" {
  value = azurerm_data_factory_dataset_azure_sql_table.this.table
}

output "folder" {
  value = azurerm_data_factory_dataset_azure_sql_table.this.folder
}

output "schema_column" {
  value = azurerm_data_factory_dataset_azure_sql_table.this.schema_column
}

output "description" {
  value = azurerm_data_factory_dataset_azure_sql_table.this.description
}

output "annotations" {
  value = azurerm_data_factory_dataset_azure_sql_table.this.annotations
}

output "parameters" {
  value = azurerm_data_factory_dataset_azure_sql_table.this.parameters
}

output "additional_properties" {
  value = azurerm_data_factory_dataset_azure_sql_table.this.additional_properties
}

output "id" {
  description = "The ID of the Data Factory Azure SQL Table Dataset."
  value       = azurerm_data_factory_dataset_azure_sql_table.this.id
}

