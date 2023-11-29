output "name" {
  value = azurerm_data_factory_linked_service_odbc.this.name
}

output "data_factory_id" {
  value = azurerm_data_factory_linked_service_odbc.this.data_factory_id
}

output "connection_string" {
  value     = azurerm_data_factory_linked_service_odbc.this.connection_string
  sensitive = true
}

output "basic_authentication" {
  value = azurerm_data_factory_linked_service_odbc.this.basic_authentication
}

output "description" {
  value = azurerm_data_factory_linked_service_odbc.this.description
}

output "integration_runtime_name" {
  value = azurerm_data_factory_linked_service_odbc.this.integration_runtime_name
}

output "annotations" {
  value = azurerm_data_factory_linked_service_odbc.this.annotations
}

output "parameters" {
  value = azurerm_data_factory_linked_service_odbc.this.parameters
}

output "additional_properties" {
  value = azurerm_data_factory_linked_service_odbc.this.additional_properties
}

output "id" {
  description = "The ID of the Data Factory ODBC Linked Service."
  value       = azurerm_data_factory_linked_service_odbc.this.id
}

