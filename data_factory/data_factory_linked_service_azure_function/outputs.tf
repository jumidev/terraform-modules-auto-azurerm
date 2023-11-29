output "name" {
  value = azurerm_data_factory_linked_service_azure_function.this.name
}

output "data_factory_id" {
  value = azurerm_data_factory_linked_service_azure_function.this.data_factory_id
}

output "description" {
  value = azurerm_data_factory_linked_service_azure_function.this.description
}

output "integration_runtime_name" {
  value = azurerm_data_factory_linked_service_azure_function.this.integration_runtime_name
}

output "annotations" {
  value = azurerm_data_factory_linked_service_azure_function.this.annotations
}

output "parameters" {
  value = azurerm_data_factory_linked_service_azure_function.this.parameters
}

output "additional_properties" {
  value = azurerm_data_factory_linked_service_azure_function.this.additional_properties
}

output "url" {
  value = azurerm_data_factory_linked_service_azure_function.this.url
}

output "key" {
  value = azurerm_data_factory_linked_service_azure_function.this.key
}

output "key_vault_key" {
  value = azurerm_data_factory_linked_service_azure_function.this.key_vault_key
}

output "id" {
  description = "The ID of the Data Factory Linked Service."
  value       = azurerm_data_factory_linked_service_azure_function.this.id
}

