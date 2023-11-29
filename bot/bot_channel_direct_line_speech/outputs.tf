output "resource_group_name" {
  value = azurerm_bot_channel_direct_line_speech.this.resource_group_name
}

output "location" {
  value = azurerm_bot_channel_direct_line_speech.this.location
}

output "bot_name" {
  value = azurerm_bot_channel_direct_line_speech.this.bot_name
}

output "cognitive_account_id" {
  value = azurerm_bot_channel_direct_line_speech.this.cognitive_account_id
}

output "cognitive_service_access_key" {
  value     = azurerm_bot_channel_direct_line_speech.this.cognitive_service_access_key
  sensitive = true
}

output "cognitive_service_location" {
  value = azurerm_bot_channel_direct_line_speech.this.cognitive_service_location
}

output "custom_speech_model_id" {
  value = azurerm_bot_channel_direct_line_speech.this.custom_speech_model_id
}

output "custom_voice_deployment_id" {
  value = azurerm_bot_channel_direct_line_speech.this.custom_voice_deployment_id
}

output "id" {
  description = "The ID of the Direct Line Speech Channel."
  value       = azurerm_bot_channel_direct_line_speech.this.id
}

