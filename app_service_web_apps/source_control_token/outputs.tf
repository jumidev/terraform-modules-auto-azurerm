output "type" {
  value = azurerm_source_control_token.this.type
}

output "token" {
  value = azurerm_source_control_token.this.token
}

output "token_secret" {
  value = azurerm_source_control_token.this.token_secret
}

output "id" {
  description = "The ID of the App Service Source GitHub Token."
  value       = azurerm_source_control_token.this.id
}

