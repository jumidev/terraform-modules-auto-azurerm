output "name" {
  value = azurerm_bot_channels_registration.this.name
}

output "resource_group_name" {
  value = azurerm_bot_channels_registration.this.resource_group_name
}

output "location" {
  value = azurerm_bot_channels_registration.this.location
}

output "sku" {
  value = azurerm_bot_channels_registration.this.sku
}

output "microsoft_app_id" {
  value = azurerm_bot_channels_registration.this.microsoft_app_id
}

output "cmk_key_vault_url" {
  value = azurerm_bot_channels_registration.this.cmk_key_vault_url
}

output "display_name" {
  value = azurerm_bot_channels_registration.this.display_name
}

output "description" {
  value = azurerm_bot_channels_registration.this.description
}

output "endpoint" {
  value = azurerm_bot_channels_registration.this.endpoint
}

output "developer_app_insights_key" {
  value = azurerm_bot_channels_registration.this.developer_app_insights_key
}

output "developer_app_insights_api_key" {
  value = azurerm_bot_channels_registration.this.developer_app_insights_api_key
}

output "developer_app_insights_application_id" {
  value = azurerm_bot_channels_registration.this.developer_app_insights_application_id
}

output "icon_url" {
  value = azurerm_bot_channels_registration.this.icon_url
}

output "streaming_endpoint_enabled" {
  value = azurerm_bot_channels_registration.this.streaming_endpoint_enabled
}

output "isolated_network_enabled" {
  value = azurerm_bot_channels_registration.this.isolated_network_enabled
}

output "public_network_access_enabled" {
  value = azurerm_bot_channels_registration.this.public_network_access_enabled
}

output "tags" {
  value = azurerm_bot_channels_registration.this.tags
}

output "id" {
  description = "The ID of the Bot Channels Registration."
  value       = azurerm_bot_channels_registration.this.id
}

