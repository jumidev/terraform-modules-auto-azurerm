output "resource_group_name" {
  value = azurerm_bot_channel_web_chat.this.resource_group_name
}

output "location" {
  value = azurerm_bot_channel_web_chat.this.location
}

output "bot_name" {
  value = azurerm_bot_channel_web_chat.this.bot_name
}

output "site_names" {
  value = azurerm_bot_channel_web_chat.this.site_names
}

output "site" {
  value = azurerm_bot_channel_web_chat.this.site
}

output "id" {
  description = "The ID of the Web Chat Channel."
  value       = azurerm_bot_channel_web_chat.this.id
}

