output "name" {
  value = azurerm_logic_app_integration_account_schema.this.name
}

output "resource_group_name" {
  value = azurerm_logic_app_integration_account_schema.this.resource_group_name
}

output "integration_account_name" {
  value = azurerm_logic_app_integration_account_schema.this.integration_account_name
}

output "content" {
  value = azurerm_logic_app_integration_account_schema.this.content
}

output "file_name" {
  value = azurerm_logic_app_integration_account_schema.this.file_name
}

output "metadata" {
  value = azurerm_logic_app_integration_account_schema.this.metadata
}

output "id" {
  description = "The ID of the Logic App Integration Account Schema."
  value       = azurerm_logic_app_integration_account_schema.this.id
}

