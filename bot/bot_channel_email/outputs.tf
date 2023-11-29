output "resource_group_name" {
  value = azurerm_bot_channel_email.this.resource_group_name
}

output "location" {
  value = azurerm_bot_channel_email.this.location
}

output "bot_name" {
  value = azurerm_bot_channel_email.this.bot_name
}

output "email_address" {
  value = azurerm_bot_channel_email.this.email_address
}

output "email_password" {
  value     = random_string.email_password.result
  sensitive = true
}

output "id" {
  description = "The ID of the Email Integration for a Bot Channel."
  value       = azurerm_bot_channel_email.this.id
}

