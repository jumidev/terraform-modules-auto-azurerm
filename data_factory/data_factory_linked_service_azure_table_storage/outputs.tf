output "name" {
  value = azurerm_data_factory_linked_service_azure_table_storage.this.name
}

output "data_factory_id" {
  value = azurerm_data_factory_linked_service_azure_table_storage.this.data_factory_id
}

output "description" {
  value = azurerm_data_factory_linked_service_azure_table_storage.this.description
}

output "integration_runtime_name" {
  value = azurerm_data_factory_linked_service_azure_table_storage.this.integration_runtime_name
}

output "annotations" {
  value = azurerm_data_factory_linked_service_azure_table_storage.this.annotations
}

output "parameters" {
  value = azurerm_data_factory_linked_service_azure_table_storage.this.parameters
}

output "additional_properties" {
  value = azurerm_data_factory_linked_service_azure_table_storage.this.additional_properties
}

output "connection_string" {
  value     = azurerm_data_factory_linked_service_azure_table_storage.this.connection_string
  sensitive = true
}

output "id" {
  description = "The ID of the Data Factory Linked Service."
  value       = azurerm_data_factory_linked_service_azure_table_storage.this.id
}

