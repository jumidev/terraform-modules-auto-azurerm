output "resource_group_name" {
  value = azurerm_bot_channel_ms_teams.this.resource_group_name
}

output "location" {
  value = azurerm_bot_channel_ms_teams.this.location
}

output "bot_name" {
  value = azurerm_bot_channel_ms_teams.this.bot_name
}

output "calling_web_hook" {
  value = azurerm_bot_channel_ms_teams.this.calling_web_hook
}

output "deployment_environment" {
  value = azurerm_bot_channel_ms_teams.this.deployment_environment
}

output "enable_calling" {
  value = azurerm_bot_channel_ms_teams.this.enable_calling
}

output "id" {
  description = "The ID of the Microsoft Teams Integration for a Bot Channel."
  value       = azurerm_bot_channel_ms_teams.this.id
}

