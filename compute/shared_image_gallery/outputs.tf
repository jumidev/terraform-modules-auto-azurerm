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

output "publisher_uri" {
  description = "URI of the publisher for the Shared Image Gallery. Changing this forces a new resource to be created. In addition to the Arguments listed above - the following Attributes are exported:"
  value       = azurerm_shared_image_gallery.this.publisher_uri
}

output "id" {
  description = "The ID of the Shared Image Gallery."
  value       = azurerm_shared_image_gallery.this.id
}

output "unique_name" {
  description = "The Unique Name for this Shared Image Gallery."
  value       = azurerm_shared_image_gallery.this.unique_name
}

