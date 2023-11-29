output "name" {
  value = azurerm_data_factory_dataset_binary.this.name
}

output "data_factory_id" {
  value = azurerm_data_factory_dataset_binary.this.data_factory_id
}

output "linked_service_name" {
  value = azurerm_data_factory_dataset_binary.this.linked_service_name
}

output "additional_properties" {
  value = azurerm_data_factory_dataset_binary.this.additional_properties
}

output "annotations" {
  value = azurerm_data_factory_dataset_binary.this.annotations
}

output "compression" {
  value = azurerm_data_factory_dataset_binary.this.compression
}

output "description" {
  value = azurerm_data_factory_dataset_binary.this.description
}

output "folder" {
  value = azurerm_data_factory_dataset_binary.this.folder
}

output "parameters" {
  value = azurerm_data_factory_dataset_binary.this.parameters
}

output "http_server_location" {
  value = azurerm_data_factory_dataset_binary.this.http_server_location
}

output "azure_blob_storage_location" {
  value = azurerm_data_factory_dataset_binary.this.azure_blob_storage_location
}

output "sftp_server_location" {
  value = azurerm_data_factory_dataset_binary.this.sftp_server_location
}

output "id" {
  description = "The ID of the Data Factory Dataset."
  value       = azurerm_data_factory_dataset_binary.this.id
}

