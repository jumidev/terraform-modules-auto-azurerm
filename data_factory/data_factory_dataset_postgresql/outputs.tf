output "name" {
  value = azurerm_data_factory_dataset_postgresql.this.name
}

output "data_factory_id" {
  value = azurerm_data_factory_dataset_postgresql.this.data_factory_id
}

output "linked_service_name" {
  value = azurerm_data_factory_dataset_postgresql.this.linked_service_name
}

output "table_name" {
  value = azurerm_data_factory_dataset_postgresql.this.table_name
}

output "folder" {
  value = azurerm_data_factory_dataset_postgresql.this.folder
}

output "schema_column" {
  value = azurerm_data_factory_dataset_postgresql.this.schema_column
}

output "description" {
  value = azurerm_data_factory_dataset_postgresql.this.description
}

output "annotations" {
  value = azurerm_data_factory_dataset_postgresql.this.annotations
}

output "parameters" {
  value = azurerm_data_factory_dataset_postgresql.this.parameters
}

output "additional_properties" {
  value = azurerm_data_factory_dataset_postgresql.this.additional_properties
}

output "id" {
  description = "The ID of the Data Factory PostgreSQL Dataset."
  value       = azurerm_data_factory_dataset_postgresql.this.id
}

