output "name" {
  value = azurerm_data_factory_linked_custom_service.this.name
}

output "data_factory_id" {
  value = azurerm_data_factory_linked_custom_service.this.data_factory_id
}

output "type" {
  value = azurerm_data_factory_linked_custom_service.this.type
}

output "type_properties_json" {
  value = azurerm_data_factory_linked_custom_service.this.type_properties_json
}

output "additional_properties" {
  value = azurerm_data_factory_linked_custom_service.this.additional_properties
}

output "annotations" {
  value = azurerm_data_factory_linked_custom_service.this.annotations
}

output "description" {
  value = azurerm_data_factory_linked_custom_service.this.description
}

output "integration_runtime" {
  value = azurerm_data_factory_linked_custom_service.this.integration_runtime
}

output "parameters" {
  value = azurerm_data_factory_linked_custom_service.this.parameters
}

output "id" {
  description = "The ID of the Data Factory Linked Service."
  value       = azurerm_data_factory_linked_custom_service.this.id
}

