output "name" {
  value = azurerm_storage_share_file.this.name
}

output "storage_share_id" {
  value = azurerm_storage_share_file.this.storage_share_id
}

output "path" {
  value = azurerm_storage_share_file.this.path
}

output "source" {
  value = azurerm_storage_share_file.this.source
}

output "content_type" {
  value = azurerm_storage_share_file.this.content_type
}

output "content_md5" {
  value = azurerm_storage_share_file.this.content_md5
}

output "content_encoding" {
  value = azurerm_storage_share_file.this.content_encoding
}

output "content_disposition" {
  value = azurerm_storage_share_file.this.content_disposition
}

output "metadata" {
  value = azurerm_storage_share_file.this.metadata
}

output "metadata" {
  description = "A mapping of metadata to assign to this file. In addition to the Arguments listed above - the following Attributes are exported:"
  value       = azurerm_storage_share_file.this.metadata
}

output "id" {
  description = "The ID of the file within the File Share."
  value       = azurerm_storage_share_file.this.id
}

output "content_length" {
  description = "The length in bytes of the file content"
  value       = azurerm_storage_share_file.this.content_length
}

