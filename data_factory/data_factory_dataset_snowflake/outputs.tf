output "name" {
  value = azurerm_data_factory_dataset_snowflake.this.name
}

output "data_factory_id" {
  value = azurerm_data_factory_dataset_snowflake.this.data_factory_id
}

output "linked_service_name" {
  value = azurerm_data_factory_dataset_snowflake.this.linked_service_name
}

output "schema_name" {
  value = azurerm_data_factory_dataset_snowflake.this.schema_name
}

output "table_name" {
  value = azurerm_data_factory_dataset_snowflake.this.table_name
}

output "folder" {
  value = azurerm_data_factory_dataset_snowflake.this.folder
}

output "schema_column" {
  value = azurerm_data_factory_dataset_snowflake.this.schema_column
}

output "description" {
  value = azurerm_data_factory_dataset_snowflake.this.description
}

output "annotations" {
  value = azurerm_data_factory_dataset_snowflake.this.annotations
}

output "parameters" {
  value = azurerm_data_factory_dataset_snowflake.this.parameters
}

output "additional_properties" {
  value = azurerm_data_factory_dataset_snowflake.this.additional_properties
}

output "id" {
  description = "The ID of the Data Factory Snowflake Dataset."
  value       = azurerm_data_factory_dataset_snowflake.this.id
}

