output "resource_group_name" {
  value = azurerm_bot_channel_slack.this.resource_group_name
}

output "location" {
  value = azurerm_bot_channel_slack.this.location
}

output "bot_name" {
  value = azurerm_bot_channel_slack.this.bot_name
}

output "client_id" {
  value = azurerm_bot_channel_slack.this.client_id
}

output "client_secret" {
  value = azurerm_bot_channel_slack.this.client_secret
}

output "verification_token" {
  value = azurerm_bot_channel_slack.this.verification_token
}

output "landing_page_url" {
  value = azurerm_bot_channel_slack.this.landing_page_url
}

output "signing_secret" {
  value = azurerm_bot_channel_slack.this.signing_secret
}

output "id" {
  description = "The ID of the Slack Integration for a Bot Channel."
  value       = azurerm_bot_channel_slack.this.id
}

