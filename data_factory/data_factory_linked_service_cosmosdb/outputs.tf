output "name" {
  value = azurerm_data_factory_linked_service_cosmosdb.this.name
}

output "data_factory_id" {
  value = azurerm_data_factory_linked_service_cosmosdb.this.data_factory_id
}

output "description" {
  value = azurerm_data_factory_linked_service_cosmosdb.this.description
}

output "integration_runtime_name" {
  value = azurerm_data_factory_linked_service_cosmosdb.this.integration_runtime_name
}

output "annotations" {
  value = azurerm_data_factory_linked_service_cosmosdb.this.annotations
}

output "parameters" {
  value = azurerm_data_factory_linked_service_cosmosdb.this.parameters
}

output "additional_properties" {
  value = azurerm_data_factory_linked_service_cosmosdb.this.additional_properties
}

output "account_endpoint" {
  value = azurerm_data_factory_linked_service_cosmosdb.this.account_endpoint
}

output "account_key" {
  value = azurerm_data_factory_linked_service_cosmosdb.this.account_key
}

output "database" {
  value = azurerm_data_factory_linked_service_cosmosdb.this.database
}

output "connection_string" {
  value     = azurerm_data_factory_linked_service_cosmosdb.this.connection_string
  sensitive = true
}

output "id" {
  description = "The ID of the Data Factory Linked Service."
  value       = azurerm_data_factory_linked_service_cosmosdb.this.id
}

