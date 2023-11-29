output "media_services_account_name" {
  value = azurerm_media_transform.this.media_services_account_name
}

output "name" {
  value = azurerm_media_transform.this.name
}

output "resource_group_name" {
  value = azurerm_media_transform.this.resource_group_name
}

output "description" {
  value = azurerm_media_transform.this.description
}

output "output" {
  value = azurerm_media_transform.this.output
}

output "id" {
  description = "The ID of the Transform."
  value       = azurerm_media_transform.this.id
}

