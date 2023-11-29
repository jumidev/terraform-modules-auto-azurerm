output "name" {
  value = azurerm_data_factory_dataset_parquet.this.name
}

output "data_factory_id" {
  value = azurerm_data_factory_dataset_parquet.this.data_factory_id
}

output "linked_service_name" {
  value = azurerm_data_factory_dataset_parquet.this.linked_service_name
}

output "folder" {
  value = azurerm_data_factory_dataset_parquet.this.folder
}

output "schema_column" {
  value = azurerm_data_factory_dataset_parquet.this.schema_column
}

output "description" {
  value = azurerm_data_factory_dataset_parquet.this.description
}

output "annotations" {
  value = azurerm_data_factory_dataset_parquet.this.annotations
}

output "parameters" {
  value = azurerm_data_factory_dataset_parquet.this.parameters
}

output "additional_properties" {
  value = azurerm_data_factory_dataset_parquet.this.additional_properties
}

output "http_server_location" {
  value = azurerm_data_factory_dataset_parquet.this.http_server_location
}

output "azure_blob_fs_location" {
  value = azurerm_data_factory_dataset_parquet.this.azure_blob_fs_location
}

output "azure_blob_storage_location" {
  value = azurerm_data_factory_dataset_parquet.this.azure_blob_storage_location
}

output "compression_codec" {
  value = azurerm_data_factory_dataset_parquet.this.compression_codec
}

output "compression_level" {
  value = azurerm_data_factory_dataset_parquet.this.compression_level
}

output "id" {
  description = "The ID of the Data Factory Dataset."
  value       = azurerm_data_factory_dataset_parquet.this.id
}

