output "name" {
  value = azurerm_bot_connection.this.name
}

output "resource_group_name" {
  value = azurerm_bot_connection.this.resource_group_name
}

output "location" {
  value = azurerm_bot_connection.this.location
}

output "bot_name" {
  value = azurerm_bot_connection.this.bot_name
}

output "service_provider_name" {
  value = azurerm_bot_connection.this.service_provider_name
}

output "client_id" {
  value = azurerm_bot_connection.this.client_id
}

output "client_secret" {
  value = azurerm_bot_connection.this.client_secret
}

output "scopes" {
  value = azurerm_bot_connection.this.scopes
}

output "parameters" {
  value = azurerm_bot_connection.this.parameters
}

output "tags" {
  value = azurerm_bot_connection.this.tags
}

output "id" {
  description = "The ID of the Bot Connection."
  value       = azurerm_bot_connection.this.id
}

