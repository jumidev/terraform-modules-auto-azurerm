output "name" {
  value = azurerm_data_factory_linked_service_key_vault.this.name
}

output "data_factory_id" {
  value = azurerm_data_factory_linked_service_key_vault.this.data_factory_id
}

output "key_vault_id" {
  value = azurerm_data_factory_linked_service_key_vault.this.key_vault_id
}

output "description" {
  value = azurerm_data_factory_linked_service_key_vault.this.description
}

output "integration_runtime_name" {
  value = azurerm_data_factory_linked_service_key_vault.this.integration_runtime_name
}

output "annotations" {
  value = azurerm_data_factory_linked_service_key_vault.this.annotations
}

output "parameters" {
  value = azurerm_data_factory_linked_service_key_vault.this.parameters
}

output "additional_properties" {
  value = azurerm_data_factory_linked_service_key_vault.this.additional_properties
}

output "id" {
  description = "The ID of the Data Factory Key Vault Linked Service."
  value       = azurerm_data_factory_linked_service_key_vault.this.id
}

