output "name" {
  value = azurerm_data_factory_linked_service_snowflake.this.name
}

output "data_factory_id" {
  value = azurerm_data_factory_linked_service_snowflake.this.data_factory_id
}

output "connection_string" {
  value     = azurerm_data_factory_linked_service_snowflake.this.connection_string
  sensitive = true
}

output "description" {
  value = azurerm_data_factory_linked_service_snowflake.this.description
}

output "integration_runtime_name" {
  value = azurerm_data_factory_linked_service_snowflake.this.integration_runtime_name
}

output "annotations" {
  value = azurerm_data_factory_linked_service_snowflake.this.annotations
}

output "parameters" {
  value = azurerm_data_factory_linked_service_snowflake.this.parameters
}

output "additional_properties" {
  value = azurerm_data_factory_linked_service_snowflake.this.additional_properties
}

output "key_vault_password" {
  value = azurerm_data_factory_linked_service_snowflake.this.key_vault_password
}

output "id" {
  description = "The ID of the Data Factory Snowflake Linked Service."
  value       = azurerm_data_factory_linked_service_snowflake.this.id
}

