output "name" {
  value = azurerm_data_factory_linked_service_synapse.this.name
}

output "data_factory_id" {
  value = azurerm_data_factory_linked_service_synapse.this.data_factory_id
}

output "description" {
  value = azurerm_data_factory_linked_service_synapse.this.description
}

output "integration_runtime_name" {
  value = azurerm_data_factory_linked_service_synapse.this.integration_runtime_name
}

output "annotations" {
  value = azurerm_data_factory_linked_service_synapse.this.annotations
}

output "parameters" {
  value = azurerm_data_factory_linked_service_synapse.this.parameters
}

output "additional_properties" {
  value = azurerm_data_factory_linked_service_synapse.this.additional_properties
}

output "connection_string" {
  value     = azurerm_data_factory_linked_service_synapse.this.connection_string
  sensitive = true
}

output "key_vault_password" {
  value = azurerm_data_factory_linked_service_synapse.this.key_vault_password
}

output "id" {
  description = "The ID of the Data Factory Synapse Linked Service."
  value       = azurerm_data_factory_linked_service_synapse.this.id
}

