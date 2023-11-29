output "name" {
  value = azurerm_bot_web_app.this.name
}

output "resource_group_name" {
  value = azurerm_bot_web_app.this.resource_group_name
}

output "location" {
  value = azurerm_bot_web_app.this.location
}

output "sku" {
  value = azurerm_bot_web_app.this.sku
}

output "microsoft_app_id" {
  value = azurerm_bot_web_app.this.microsoft_app_id
}

output "display_name" {
  value = azurerm_bot_web_app.this.display_name
}

output "endpoint" {
  value = azurerm_bot_web_app.this.endpoint
}

output "developer_app_insights_key" {
  value = azurerm_bot_web_app.this.developer_app_insights_key
}

output "developer_app_insights_api_key" {
  value = azurerm_bot_web_app.this.developer_app_insights_api_key
}

output "developer_app_insights_application_id" {
  value = azurerm_bot_web_app.this.developer_app_insights_application_id
}

output "luis_app_ids" {
  value = azurerm_bot_web_app.this.luis_app_ids
}

output "luis_key" {
  value = azurerm_bot_web_app.this.luis_key
}

output "tags" {
  value = azurerm_bot_web_app.this.tags
}

output "id" {
  description = "The ID of the Bot Web App."
  value       = azurerm_bot_web_app.this.id
}

