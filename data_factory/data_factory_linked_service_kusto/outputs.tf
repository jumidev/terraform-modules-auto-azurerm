output "name" {
  value = azurerm_data_factory_linked_service_kusto.this.name
}

output "data_factory_id" {
  value = azurerm_data_factory_linked_service_kusto.this.data_factory_id
}

output "description" {
  value = azurerm_data_factory_linked_service_kusto.this.description
}

output "integration_runtime_name" {
  value = azurerm_data_factory_linked_service_kusto.this.integration_runtime_name
}

output "annotations" {
  value = azurerm_data_factory_linked_service_kusto.this.annotations
}

output "parameters" {
  value = azurerm_data_factory_linked_service_kusto.this.parameters
}

output "additional_properties" {
  value = azurerm_data_factory_linked_service_kusto.this.additional_properties
}

output "kusto_endpoint" {
  value = azurerm_data_factory_linked_service_kusto.this.kusto_endpoint
}

output "kusto_database_name" {
  value = azurerm_data_factory_linked_service_kusto.this.kusto_database_name
}

output "use_managed_identity" {
  value = azurerm_data_factory_linked_service_kusto.this.use_managed_identity
}

output "service_principal_id" {
  value = azurerm_data_factory_linked_service_kusto.this.service_principal_id
}

output "service_principal_key" {
  value = azurerm_data_factory_linked_service_kusto.this.service_principal_key
}

output "tenant" {
  value = azurerm_data_factory_linked_service_kusto.this.tenant
}

output "id" {
  description = "The ID of the Data Factory Linked Service."
  value       = azurerm_data_factory_linked_service_kusto.this.id
}

