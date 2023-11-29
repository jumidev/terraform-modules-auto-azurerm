output "data_factory_id" {
  value = azurerm_data_factory_integration_runtime_self_hosted.this.data_factory_id
}

output "name" {
  value = azurerm_data_factory_integration_runtime_self_hosted.this.name
}

output "description" {
  value = azurerm_data_factory_integration_runtime_self_hosted.this.description
}

output "rbac_authorization" {
  value = azurerm_data_factory_integration_runtime_self_hosted.this.rbac_authorization
}

output "id" {
  description = "The ID of the Data Factory."
  value       = azurerm_data_factory_integration_runtime_self_hosted.this.id
}

output "primary_authorization_key" {
  description = "The primary integration runtime authentication key."
  value       = azurerm_data_factory_integration_runtime_self_hosted.this.primary_authorization_key
}

output "secondary_authorization_key" {
  description = "The secondary integration runtime authentication key."
  value       = azurerm_data_factory_integration_runtime_self_hosted.this.secondary_authorization_key
}

