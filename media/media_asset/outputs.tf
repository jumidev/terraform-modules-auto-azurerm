output "media_services_account_name" {
  value = azurerm_media_asset.this.media_services_account_name
}

output "name" {
  value = azurerm_media_asset.this.name
}

output "resource_group_name" {
  value = azurerm_media_asset.this.resource_group_name
}

output "alternate_id" {
  value = azurerm_media_asset.this.alternate_id
}

output "container" {
  value = azurerm_media_asset.this.container
}

output "description" {
  value = azurerm_media_asset.this.description
}

output "storage_account_name" {
  value = azurerm_media_asset.this.storage_account_name
}

output "id" {
  description = "The ID of the Media Asset."
  value       = azurerm_media_asset.this.id
}

