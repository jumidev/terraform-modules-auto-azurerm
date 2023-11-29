output "name" {
  value = azurerm_shared_image_gallery.this.name
}

output "resource_group_name" {
  value = azurerm_shared_image_gallery.this.resource_group_name
}

output "location" {
  value = azurerm_shared_image_gallery.this.location
}

output "description" {
  value = azurerm_shared_image_gallery.this.description
}

output "sharing" {
  value = azurerm_shared_image_gallery.this.sharing
}

output "tags" {
  value = azurerm_shared_image_gallery.this.tags
}

output "id" {
  description = "The ID of the Shared Image Gallery."
  value       = azurerm_shared_image_gallery.this.id
}

output "unique_name" {
  description = "The Unique Name for this Shared Image Gallery."
  value       = azurerm_shared_image_gallery.this.unique_name
}

output "name" {
  description = "The community public name of the Shared Image Gallery."
  value       = azurerm_shared_image_gallery.this.name
}

