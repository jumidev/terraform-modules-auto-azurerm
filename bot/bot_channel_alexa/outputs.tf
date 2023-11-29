output "resource_group_name" {
  value = azurerm_bot_channel_alexa.this.resource_group_name
}

output "location" {
  value = azurerm_bot_channel_alexa.this.location
}

output "bot_name" {
  value = azurerm_bot_channel_alexa.this.bot_name
}

output "skill_id" {
  value = azurerm_bot_channel_alexa.this.skill_id
}

output "id" {
  description = "The ID of the Alexa Integration for a Bot Channel."
  value       = azurerm_bot_channel_alexa.this.id
}

