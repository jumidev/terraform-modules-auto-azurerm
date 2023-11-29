output "name" {
  value = azurerm_data_factory_linked_service_azure_file_storage.this.name
}

output "data_factory_id" {
  value = azurerm_data_factory_linked_service_azure_file_storage.this.data_factory_id
}

output "description" {
  value = azurerm_data_factory_linked_service_azure_file_storage.this.description
}

output "host" {
  value = azurerm_data_factory_linked_service_azure_file_storage.this.host
}

output "integration_runtime_name" {
  value = azurerm_data_factory_linked_service_azure_file_storage.this.integration_runtime_name
}

output "annotations" {
  value = azurerm_data_factory_linked_service_azure_file_storage.this.annotations
}

output "parameters" {
  value = azurerm_data_factory_linked_service_azure_file_storage.this.parameters
}

output "password" {
  value     = azurerm_data_factory_linked_service_azure_file_storage.this.password
  sensitive = true
}

output "user_id" {
  value = azurerm_data_factory_linked_service_azure_file_storage.this.user_id
}

output "additional_properties" {
  value = azurerm_data_factory_linked_service_azure_file_storage.this.additional_properties
}

output "connection_string" {
  value     = azurerm_data_factory_linked_service_azure_file_storage.this.connection_string
  sensitive = true
}

output "file_share" {
  value = azurerm_data_factory_linked_service_azure_file_storage.this.file_share
}

output "key_vault_password" {
  value = azurerm_data_factory_linked_service_azure_file_storage.this.key_vault_password
}

output "id" {
  description = "The ID of the Data Factory Linked Service."
  value       = azurerm_data_factory_linked_service_azure_file_storage.this.id
}

