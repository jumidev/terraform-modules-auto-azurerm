output "name" {
  value = azurerm_data_factory_linked_service_azure_sql_database.this.name
}

output "data_factory_id" {
  value = azurerm_data_factory_linked_service_azure_sql_database.this.data_factory_id
}

output "connection_string" {
  value     = azurerm_data_factory_linked_service_azure_sql_database.this.connection_string
  sensitive = true
}

output "use_managed_identity" {
  value = azurerm_data_factory_linked_service_azure_sql_database.this.use_managed_identity
}

output "service_principal_id" {
  value = azurerm_data_factory_linked_service_azure_sql_database.this.service_principal_id
}

output "service_principal_key" {
  value = azurerm_data_factory_linked_service_azure_sql_database.this.service_principal_key
}

output "tenant_id" {
  value = azurerm_data_factory_linked_service_azure_sql_database.this.tenant_id
}

output "description" {
  value = azurerm_data_factory_linked_service_azure_sql_database.this.description
}

output "integration_runtime_name" {
  value = azurerm_data_factory_linked_service_azure_sql_database.this.integration_runtime_name
}

output "annotations" {
  value = azurerm_data_factory_linked_service_azure_sql_database.this.annotations
}

output "parameters" {
  value = azurerm_data_factory_linked_service_azure_sql_database.this.parameters
}

output "additional_properties" {
  value = azurerm_data_factory_linked_service_azure_sql_database.this.additional_properties
}

output "key_vault_connection_string" {
  value = azurerm_data_factory_linked_service_azure_sql_database.this.key_vault_connection_string
}

output "key_vault_password" {
  value = azurerm_data_factory_linked_service_azure_sql_database.this.key_vault_password
}

output "id" {
  description = "The ID of the Data Factory Azure SQL Database Linked Service."
  value       = azurerm_data_factory_linked_service_azure_sql_database.this.id
}

