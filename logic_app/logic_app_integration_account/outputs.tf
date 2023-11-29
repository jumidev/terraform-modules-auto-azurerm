output "name" {
  value = azurerm_logic_app_integration_account.this.name
}

output "resource_group_name" {
  value = azurerm_logic_app_integration_account.this.resource_group_name
}

output "location" {
  value = azurerm_logic_app_integration_account.this.location
}

output "sku_name" {
  value = azurerm_logic_app_integration_account.this.sku_name
}

output "integration_service_environment_id" {
  value = azurerm_logic_app_integration_account.this.integration_service_environment_id
}

output "tags" {
  value = azurerm_logic_app_integration_account.this.tags
}

output "id" {
  description = "The ID of the Logic App Integration Account."
  value       = azurerm_logic_app_integration_account.this.id
}

