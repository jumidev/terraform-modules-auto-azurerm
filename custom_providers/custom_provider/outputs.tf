output "name" {
  value = azurerm_custom_provider.this.name
}

output "resource_group_name" {
  value = azurerm_custom_provider.this.resource_group_name
}

output "location" {
  value = azurerm_custom_provider.this.location
}

output "resource_type" {
  value = azurerm_custom_provider.this.resource_type
}

output "action" {
  value = azurerm_custom_provider.this.action
}

output "validation" {
  value = azurerm_custom_provider.this.validation
}

output "tags" {
  value = azurerm_custom_provider.this.tags
}

output "id" {
  description = "The ID of the Custom Provider."
  value       = azurerm_custom_provider.this.id
}

