output "name" {
  value = azurerm_data_factory_linked_service_cosmosdb_mongoapi.this.name
}

output "data_factory_id" {
  value = azurerm_data_factory_linked_service_cosmosdb_mongoapi.this.data_factory_id
}

output "description" {
  value = azurerm_data_factory_linked_service_cosmosdb_mongoapi.this.description
}

output "integration_runtime_name" {
  value = azurerm_data_factory_linked_service_cosmosdb_mongoapi.this.integration_runtime_name
}

output "annotations" {
  value = azurerm_data_factory_linked_service_cosmosdb_mongoapi.this.annotations
}

output "parameters" {
  value = azurerm_data_factory_linked_service_cosmosdb_mongoapi.this.parameters
}

output "additional_properties" {
  value = azurerm_data_factory_linked_service_cosmosdb_mongoapi.this.additional_properties
}

output "database" {
  value = azurerm_data_factory_linked_service_cosmosdb_mongoapi.this.database
}

output "connection_string" {
  value     = azurerm_data_factory_linked_service_cosmosdb_mongoapi.this.connection_string
  sensitive = true
}

output "server_version_is_32_or_higher" {
  value = azurerm_data_factory_linked_service_cosmosdb_mongoapi.this.server_version_is_32_or_higher
}

output "id" {
  description = "The ID of the Data Factory Linked Service."
  value       = azurerm_data_factory_linked_service_cosmosdb_mongoapi.this.id
}

