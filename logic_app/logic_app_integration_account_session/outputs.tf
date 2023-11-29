output "name" {
  value = azurerm_logic_app_integration_account_session.this.name
}

output "resource_group_name" {
  value = azurerm_logic_app_integration_account_session.this.resource_group_name
}

output "integration_account_name" {
  value = azurerm_logic_app_integration_account_session.this.integration_account_name
}

output "content" {
  value = azurerm_logic_app_integration_account_session.this.content
}

output "id" {
  description = "The ID of the Logic App Integration Account Session."
  value       = azurerm_logic_app_integration_account_session.this.id
}

