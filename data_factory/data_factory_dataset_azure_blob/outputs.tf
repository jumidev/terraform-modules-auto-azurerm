output "name" {
  value = azurerm_data_factory_dataset_azure_blob.this.name
}

output "data_factory_id" {
  value = azurerm_data_factory_dataset_azure_blob.this.data_factory_id
}

output "linked_service_name" {
  value = azurerm_data_factory_dataset_azure_blob.this.linked_service_name
}

output "folder" {
  value = azurerm_data_factory_dataset_azure_blob.this.folder
}

output "schema_column" {
  value = azurerm_data_factory_dataset_azure_blob.this.schema_column
}

output "description" {
  value = azurerm_data_factory_dataset_azure_blob.this.description
}

output "annotations" {
  value = azurerm_data_factory_dataset_azure_blob.this.annotations
}

output "parameters" {
  value = azurerm_data_factory_dataset_azure_blob.this.parameters
}

output "additional_properties" {
  value = azurerm_data_factory_dataset_azure_blob.this.additional_properties
}

output "path" {
  value = azurerm_data_factory_dataset_azure_blob.this.path
}

output "filename" {
  value = azurerm_data_factory_dataset_azure_blob.this.filename
}

output "dynamic_path_enabled" {
  value = azurerm_data_factory_dataset_azure_blob.this.dynamic_path_enabled
}

output "dynamic_filename_enabled" {
  value = azurerm_data_factory_dataset_azure_blob.this.dynamic_filename_enabled
}

output "id" {
  description = "The ID of the Data Factory Dataset."
  value       = azurerm_data_factory_dataset_azure_blob.this.id
}

