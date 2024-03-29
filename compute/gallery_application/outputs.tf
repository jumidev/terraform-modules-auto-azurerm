output "name" {
  value = azurerm_gallery_application.this.name
}

output "gallery_id" {
  value = azurerm_gallery_application.this.gallery_id
}

output "location" {
  value = azurerm_gallery_application.this.location
}

output "supported_os_type" {
  value = azurerm_gallery_application.this.supported_os_type
}

output "description" {
  value = azurerm_gallery_application.this.description
}

output "end_of_life_date" {
  value = azurerm_gallery_application.this.end_of_life_date
}

output "eula" {
  value = azurerm_gallery_application.this.eula
}

output "privacy_statement_uri" {
  value = azurerm_gallery_application.this.privacy_statement_uri
}

output "release_note_uri" {
  value = azurerm_gallery_application.this.release_note_uri
}

output "tags" {
  value = azurerm_gallery_application.this.tags
}

output "tags" {
  description = "A mapping of tags to assign to the Gallery Application. In addition to the Arguments listed above - the following Attributes are exported:"
  value       = azurerm_gallery_application.this.tags
}

output "id" {
  description = "The ID of the Gallery Application."
  value       = azurerm_gallery_application.this.id
}

