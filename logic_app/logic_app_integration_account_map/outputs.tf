output "name" {
  value = azurerm_logic_app_integration_account_map.this.name
}

output "resource_group_name" {
  value = azurerm_logic_app_integration_account_map.this.resource_group_name
}

output "integration_account_name" {
  value = azurerm_logic_app_integration_account_map.this.integration_account_name
}

output "content" {
  value = azurerm_logic_app_integration_account_map.this.content
}

output "map_type" {
  value = azurerm_logic_app_integration_account_map.this.map_type
}

output "metadata" {
  value = azurerm_logic_app_integration_account_map.this.metadata
}

output "id" {
  description = "The ID of the Logic App Integration Account Map."
  value       = azurerm_logic_app_integration_account_map.this.id
}

