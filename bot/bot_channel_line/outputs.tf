output "resource_group_name" {
  value = azurerm_bot_channel_line.this.resource_group_name
}

output "location" {
  value = azurerm_bot_channel_line.this.location
}

output "bot_name" {
  value = azurerm_bot_channel_line.this.bot_name
}

output "line_channel" {
  value = azurerm_bot_channel_line.this.line_channel
}

output "id" {
  description = "The ID of the Line Integration for a Bot Channel."
  value       = azurerm_bot_channel_line.this.id
}

