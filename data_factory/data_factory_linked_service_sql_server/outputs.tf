output "name" {
  value = azurerm_data_factory_linked_service_sql_server.this.name
}

output "data_factory_id" {
  value = azurerm_data_factory_linked_service_sql_server.this.data_factory_id
}

output "connection_string" {
  value     = azurerm_data_factory_linked_service_sql_server.this.connection_string
  sensitive = true
}

output "description" {
  value = azurerm_data_factory_linked_service_sql_server.this.description
}

output "integration_runtime_name" {
  value = azurerm_data_factory_linked_service_sql_server.this.integration_runtime_name
}

output "annotations" {
  value = azurerm_data_factory_linked_service_sql_server.this.annotations
}

output "parameters" {
  value = azurerm_data_factory_linked_service_sql_server.this.parameters
}

output "additional_properties" {
  value = azurerm_data_factory_linked_service_sql_server.this.additional_properties
}

output "key_vault_connection_string" {
  value = azurerm_data_factory_linked_service_sql_server.this.key_vault_connection_string
}

output "key_vault_password" {
  value = azurerm_data_factory_linked_service_sql_server.this.key_vault_password
}

output "user_name" {
  value = azurerm_data_factory_linked_service_sql_server.this.user_name
}

output "id" {
  description = "The ID of the Data Factory SQL Server Linked Service."
  value       = azurerm_data_factory_linked_service_sql_server.this.id
}

