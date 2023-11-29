output "resource_group_name" {
  value = azurerm_bot_channel_facebook.this.resource_group_name
}

output "location" {
  value = azurerm_bot_channel_facebook.this.location
}

output "bot_name" {
  value = azurerm_bot_channel_facebook.this.bot_name
}

output "facebook_application_id" {
  value = azurerm_bot_channel_facebook.this.facebook_application_id
}

output "facebook_application_secret" {
  value = azurerm_bot_channel_facebook.this.facebook_application_secret
}

output "page" {
  value = azurerm_bot_channel_facebook.this.page
}

output "id" {
  description = "The ID of the Facebook Integration for a Bot Channel."
  value       = azurerm_bot_channel_facebook.this.id
}

