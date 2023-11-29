output "name" {
  value = azurerm_api_management_named_value.this.name
}

output "resource_group_name" {
  value = azurerm_api_management_named_value.this.resource_group_name
}

output "api_management_name" {
  value = azurerm_api_management_named_value.this.api_management_name
}

output "display_name" {
  value = azurerm_api_management_named_value.this.display_name
}

output "value" {
  value = azurerm_api_management_named_value.this.value
}

output "value_from_key_vault" {
  value = azurerm_api_management_named_value.this.value_from_key_vault
}

output "secret" {
  value = azurerm_api_management_named_value.this.secret
}

output "tags" {
  value = azurerm_api_management_named_value.this.tags
}

output "id" {
  description = "The ID of the API Management Named Value."
  value       = azurerm_api_management_named_value.this.id
}

