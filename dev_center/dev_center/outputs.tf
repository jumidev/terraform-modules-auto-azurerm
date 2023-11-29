output "location" {
  value = azurerm_dev_center.this.location
}

output "name" {
  value = azurerm_dev_center.this.name
}

output "resource_group_name" {
  value = azurerm_dev_center.this.resource_group_name
}

output "identity" {
  value = azurerm_dev_center.this.identity
}

output "tags" {
  value = azurerm_dev_center.this.tags
}

output "id" {
  description = "The ID of the Dev Center."
  value       = azurerm_dev_center.this.id
}

output "dev_center_uri" {
  description = "The URI of the Dev Center."
  value       = azurerm_dev_center.this.dev_center_uri
}

