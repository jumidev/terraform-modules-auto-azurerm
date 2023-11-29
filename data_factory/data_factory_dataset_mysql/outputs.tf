output "name" {
  value = azurerm_data_factory_dataset_mysql.this.name
}

output "data_factory_id" {
  value = azurerm_data_factory_dataset_mysql.this.data_factory_id
}

output "linked_service_name" {
  value = azurerm_data_factory_dataset_mysql.this.linked_service_name
}

output "folder" {
  value = azurerm_data_factory_dataset_mysql.this.folder
}

output "schema_column" {
  value = azurerm_data_factory_dataset_mysql.this.schema_column
}

output "description" {
  value = azurerm_data_factory_dataset_mysql.this.description
}

output "annotations" {
  value = azurerm_data_factory_dataset_mysql.this.annotations
}

output "parameters" {
  value = azurerm_data_factory_dataset_mysql.this.parameters
}

output "additional_properties" {
  value = azurerm_data_factory_dataset_mysql.this.additional_properties
}

output "table_name" {
  value = azurerm_data_factory_dataset_mysql.this.table_name
}

output "id" {
  description = "The ID of the Data Factory MySQL Dataset."
  value       = azurerm_data_factory_dataset_mysql.this.id
}

