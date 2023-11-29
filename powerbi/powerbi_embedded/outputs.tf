output "name" {
  value = azurerm_powerbi_embedded.this.name
}

output "resource_group_name" {
  value = azurerm_powerbi_embedded.this.resource_group_name
}

output "location" {
  value = azurerm_powerbi_embedded.this.location
}

output "sku_name" {
  value = azurerm_powerbi_embedded.this.sku_name
}

output "administrators" {
  value = azurerm_powerbi_embedded.this.administrators
}

output "mode" {
  value = azurerm_powerbi_embedded.this.mode
}

output "tags" {
  value = azurerm_powerbi_embedded.this.tags
}

output "id" {
  description = "The ID of the PowerBI Embedded."
  value       = azurerm_powerbi_embedded.this.id
}

