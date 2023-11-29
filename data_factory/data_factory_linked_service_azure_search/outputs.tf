output "name" {
  value = azurerm_data_factory_linked_service_azure_search.this.name
}

output "data_factory_id" {
  value = azurerm_data_factory_linked_service_azure_search.this.data_factory_id
}

output "description" {
  value = azurerm_data_factory_linked_service_azure_search.this.description
}

output "integration_runtime_name" {
  value = azurerm_data_factory_linked_service_azure_search.this.integration_runtime_name
}

output "annotations" {
  value = azurerm_data_factory_linked_service_azure_search.this.annotations
}

output "parameters" {
  value = azurerm_data_factory_linked_service_azure_search.this.parameters
}

output "additional_properties" {
  value = azurerm_data_factory_linked_service_azure_search.this.additional_properties
}

output "url" {
  value = azurerm_data_factory_linked_service_azure_search.this.url
}

output "search_service_key" {
  value = azurerm_data_factory_linked_service_azure_search.this.search_service_key
}

output "id" {
  description = "The ID of the Data Factory Linked Service."
  value       = azurerm_data_factory_linked_service_azure_search.this.id
}

output "encrypted_credential" {
  description = "The encrypted credential to connect to Azure Search Service."
  value       = azurerm_data_factory_linked_service_azure_search.this.encrypted_credential
}

