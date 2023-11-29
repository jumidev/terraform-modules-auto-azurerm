output "resource_group_name" {
  value = azurerm_bot_channel_directline.this.resource_group_name
}

output "location" {
  value = azurerm_bot_channel_directline.this.location
}

output "bot_name" {
  value = azurerm_bot_channel_directline.this.bot_name
}

output "site" {
  value = azurerm_bot_channel_directline.this.site
}

output "id" {
  description = "Id for the site"
  value       = azurerm_bot_channel_directline.this.id
}

output "key" {
  description = "Primary key for accessing this site"
  value       = azurerm_bot_channel_directline.this.key
}

output "key2" {
  description = "Secondary key for accessing this site"
  value       = azurerm_bot_channel_directline.this.key2
}

