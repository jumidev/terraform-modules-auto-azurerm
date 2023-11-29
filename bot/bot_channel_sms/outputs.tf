output "resource_group_name" {
  value = azurerm_bot_channel_sms.this.resource_group_name
}

output "location" {
  value = azurerm_bot_channel_sms.this.location
}

output "bot_name" {
  value = azurerm_bot_channel_sms.this.bot_name
}

output "phone_number" {
  value = azurerm_bot_channel_sms.this.phone_number
}

output "sms_channel_account_security_id" {
  value = azurerm_bot_channel_sms.this.sms_channel_account_security_id
}

output "sms_channel_auth_token" {
  value = azurerm_bot_channel_sms.this.sms_channel_auth_token
}

output "id" {
  description = "The ID of the SMS Integration for a Bot Channel."
  value       = azurerm_bot_channel_sms.this.id
}

