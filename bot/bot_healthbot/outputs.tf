output "name" {
  value = azurerm_bot_healthbot.this.name
}

output "resource_group_name" {
  value = azurerm_bot_healthbot.this.resource_group_name
}

output "location" {
  value = azurerm_bot_healthbot.this.location
}

output "sku_name" {
  value = azurerm_bot_healthbot.this.sku_name
}

output "tags" {
  value = azurerm_bot_healthbot.this.tags
}

output "id" {
  description = "The ID of the resource."
  value       = azurerm_bot_healthbot.this.id
}

output "bot_management_portal_url" {
  description = "The management portal url."
  value       = azurerm_bot_healthbot.this.bot_management_portal_url
}

