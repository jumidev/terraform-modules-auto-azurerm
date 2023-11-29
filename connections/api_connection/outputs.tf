output "managed_api_id" {
  value = azurerm_api_connection.this.managed_api_id
}

output "name" {
  value = azurerm_api_connection.this.name
}

output "resource_group_name" {
  value = azurerm_api_connection.this.resource_group_name
}

output "display_name" {
  value = azurerm_api_connection.this.display_name
}

output "parameter_values" {
  value = azurerm_api_connection.this.parameter_values
}

output "tags" {
  value = azurerm_api_connection.this.tags
}

output "id" {
  description = "The ID of the API Connection."
  value       = azurerm_api_connection.this.id
}

