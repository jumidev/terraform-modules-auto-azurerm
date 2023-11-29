output "name" {
  value = azurerm_storage_blob.this.name
}

output "storage_account_name" {
  value = azurerm_storage_blob.this.storage_account_name
}

output "storage_container_name" {
  value = azurerm_storage_blob.this.storage_container_name
}

output "type" {
  value = azurerm_storage_blob.this.type
}

output "size" {
  value = azurerm_storage_blob.this.size
}

output "access_tier" {
  value = azurerm_storage_blob.this.access_tier
}

output "cache_control" {
  value = azurerm_storage_blob.this.cache_control
}

output "content_type" {
  value = azurerm_storage_blob.this.content_type
}

output "content_md5" {
  value = azurerm_storage_blob.this.content_md5
}

output "source" {
  value = azurerm_storage_blob.this.source
}

output "source_content" {
  value = azurerm_storage_blob.this.source_content
}

output "source_uri" {
  value = azurerm_storage_blob.this.source_uri
}

output "parallelism" {
  value = azurerm_storage_blob.this.parallelism
}

output "metadata" {
  value = azurerm_storage_blob.this.metadata
}

output "id" {
  description = "The ID of the Storage Blob."
  value       = azurerm_storage_blob.this.id
}

output "url" {
  description = "The URL of the blob"
  value       = azurerm_storage_blob.this.url
}

