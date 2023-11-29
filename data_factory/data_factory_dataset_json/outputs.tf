output "name" {
  value = azurerm_data_factory_dataset_json.this.name
}

output "data_factory_id" {
  value = azurerm_data_factory_dataset_json.this.data_factory_id
}

output "linked_service_name" {
  value = azurerm_data_factory_dataset_json.this.linked_service_name
}

output "folder" {
  value = azurerm_data_factory_dataset_json.this.folder
}

output "schema_column" {
  value = azurerm_data_factory_dataset_json.this.schema_column
}

output "description" {
  value = azurerm_data_factory_dataset_json.this.description
}

output "annotations" {
  value = azurerm_data_factory_dataset_json.this.annotations
}

output "parameters" {
  value = azurerm_data_factory_dataset_json.this.parameters
}

output "additional_properties" {
  value = azurerm_data_factory_dataset_json.this.additional_properties
}

output "http_server_location" {
  value = azurerm_data_factory_dataset_json.this.http_server_location
}

output "azure_blob_storage_location" {
  value = azurerm_data_factory_dataset_json.this.azure_blob_storage_location
}

output "encoding" {
  value = azurerm_data_factory_dataset_json.this.encoding
}

output "id" {
  description = "The ID of the Data Factory Dataset."
  value       = azurerm_data_factory_dataset_json.this.id
}

