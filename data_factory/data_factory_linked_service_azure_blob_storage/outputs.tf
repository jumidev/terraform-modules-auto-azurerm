output "name" {
  value = azurerm_data_factory_linked_service_azure_blob_storage.this.name
}

output "data_factory_id" {
  value = azurerm_data_factory_linked_service_azure_blob_storage.this.data_factory_id
}

output "description" {
  value = azurerm_data_factory_linked_service_azure_blob_storage.this.description
}

output "integration_runtime_name" {
  value = azurerm_data_factory_linked_service_azure_blob_storage.this.integration_runtime_name
}

output "annotations" {
  value = azurerm_data_factory_linked_service_azure_blob_storage.this.annotations
}

output "parameters" {
  value = azurerm_data_factory_linked_service_azure_blob_storage.this.parameters
}

output "additional_properties" {
  value = azurerm_data_factory_linked_service_azure_blob_storage.this.additional_properties
}

output "connection_string" {
  value     = azurerm_data_factory_linked_service_azure_blob_storage.this.connection_string
  sensitive = true
}

output "connection_string_insecure" {
  value     = azurerm_data_factory_linked_service_azure_blob_storage.this.connection_string_insecure
  sensitive = true
}

output "sas_uri" {
  value = azurerm_data_factory_linked_service_azure_blob_storage.this.sas_uri
}

output "key_vault_sas_token" {
  value = azurerm_data_factory_linked_service_azure_blob_storage.this.key_vault_sas_token
}

output "id" {
  description = "The ID of the Data Factory Linked Service."
  value       = azurerm_data_factory_linked_service_azure_blob_storage.this.id
}

