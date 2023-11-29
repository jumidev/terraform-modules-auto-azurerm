output "name" {
  value = azurerm_data_factory_linked_service_mysql.this.name
}

output "data_factory_id" {
  value = azurerm_data_factory_linked_service_mysql.this.data_factory_id
}

output "connection_string" {
  value     = azurerm_data_factory_linked_service_mysql.this.connection_string
  sensitive = true
}

output "description" {
  value = azurerm_data_factory_linked_service_mysql.this.description
}

output "integration_runtime_name" {
  value = azurerm_data_factory_linked_service_mysql.this.integration_runtime_name
}

output "annotations" {
  value = azurerm_data_factory_linked_service_mysql.this.annotations
}

output "parameters" {
  value = azurerm_data_factory_linked_service_mysql.this.parameters
}

output "additional_properties" {
  value = azurerm_data_factory_linked_service_mysql.this.additional_properties
}

output "id" {
  description = "The ID of the Data Factory MySQL Linked Service."
  value       = azurerm_data_factory_linked_service_mysql.this.id
}

