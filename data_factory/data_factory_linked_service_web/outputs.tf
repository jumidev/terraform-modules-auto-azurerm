output "name" {
  value = azurerm_data_factory_linked_service_web.this.name
}

output "data_factory_id" {
  value = azurerm_data_factory_linked_service_web.this.data_factory_id
}

output "description" {
  value = azurerm_data_factory_linked_service_web.this.description
}

output "integration_runtime_name" {
  value = azurerm_data_factory_linked_service_web.this.integration_runtime_name
}

output "annotations" {
  value = azurerm_data_factory_linked_service_web.this.annotations
}

output "parameters" {
  value = azurerm_data_factory_linked_service_web.this.parameters
}

output "additional_properties" {
  value = azurerm_data_factory_linked_service_web.this.additional_properties
}

output "authentication_type" {
  value = azurerm_data_factory_linked_service_web.this.authentication_type
}

output "url" {
  value = azurerm_data_factory_linked_service_web.this.url
}

output "password" {
  value     = azurerm_data_factory_linked_service_web.this.password
  sensitive = true
}

output "username" {
  value = azurerm_data_factory_linked_service_web.this.username
}

output "id" {
  description = "The ID of the Data Factory Linked Service."
  value       = azurerm_data_factory_linked_service_web.this.id
}

