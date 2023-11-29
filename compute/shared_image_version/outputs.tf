output "name" {
  value = azurerm_shared_image_version.this.name
}

output "gallery_name" {
  value = azurerm_shared_image_version.this.gallery_name
}

output "image_name" {
  value = azurerm_shared_image_version.this.image_name
}

output "location" {
  value = azurerm_shared_image_version.this.location
}

output "resource_group_name" {
  value = azurerm_shared_image_version.this.resource_group_name
}

output "target_region" {
  value = azurerm_shared_image_version.this.target_region
}

output "blob_uri" {
  value = azurerm_shared_image_version.this.blob_uri
}

output "end_of_life_date" {
  value = azurerm_shared_image_version.this.end_of_life_date
}

output "exclude_from_latest" {
  value = azurerm_shared_image_version.this.exclude_from_latest
}

output "managed_image_id" {
  value = azurerm_shared_image_version.this.managed_image_id
}

output "os_disk_snapshot_id" {
  value = azurerm_shared_image_version.this.os_disk_snapshot_id
}

output "deletion_of_replicated_locations_enabled" {
  value = azurerm_shared_image_version.this.deletion_of_replicated_locations_enabled
}

output "replication_mode" {
  value = azurerm_shared_image_version.this.replication_mode
}

output "storage_account_id" {
  value = azurerm_shared_image_version.this.storage_account_id
}

output "tags" {
  value = azurerm_shared_image_version.this.tags
}

output "id" {
  description = "The ID of the Shared Image Version."
  value       = azurerm_shared_image_version.this.id
}

