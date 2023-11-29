output "name" {
  value = azurerm_logic_app_integration_account_batch_configuration.this.name
}

output "resource_group_name" {
  value = azurerm_logic_app_integration_account_batch_configuration.this.resource_group_name
}

output "integration_account_name" {
  value = azurerm_logic_app_integration_account_batch_configuration.this.integration_account_name
}

output "batch_group_name" {
  value = azurerm_logic_app_integration_account_batch_configuration.this.batch_group_name
}

output "release_criteria" {
  value = azurerm_logic_app_integration_account_batch_configuration.this.release_criteria
}

output "metadata" {
  value = azurerm_logic_app_integration_account_batch_configuration.this.metadata
}

output "id" {
  description = "The ID of the Logic App Integration Account Batch Configuration."
  value       = azurerm_logic_app_integration_account_batch_configuration.this.id
}

