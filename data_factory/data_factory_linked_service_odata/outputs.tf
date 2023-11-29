output "name" {
  value = azurerm_data_factory_linked_service_odata.this.name
}

output "data_factory_id" {
  value = azurerm_data_factory_linked_service_odata.this.data_factory_id
}

output "url" {
  value = azurerm_data_factory_linked_service_odata.this.url
}

output "basic_authentication" {
  value = azurerm_data_factory_linked_service_odata.this.basic_authentication
}

output "description" {
  value = azurerm_data_factory_linked_service_odata.this.description
}

output "integration_runtime_name" {
  value = azurerm_data_factory_linked_service_odata.this.integration_runtime_name
}

output "annotations" {
  value = azurerm_data_factory_linked_service_odata.this.annotations
}

output "parameters" {
  value = azurerm_data_factory_linked_service_odata.this.parameters
}

output "additional_properties" {
  value = azurerm_data_factory_linked_service_odata.this.additional_properties
}

output "id" {
  description = "The ID of the Data Factory OData Linked Service."
  value       = azurerm_data_factory_linked_service_odata.this.id
}

