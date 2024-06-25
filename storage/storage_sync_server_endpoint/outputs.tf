output "name" {
  value = azurerm_storage_sync_server_endpoint.this.name
}

output "storage_sync_group_id" {
  value = azurerm_storage_sync_server_endpoint.this.storage_sync_group_id
}

output "registered_server_id" {
  value = azurerm_storage_sync_server_endpoint.this.registered_server_id
}

output "server_local_path" {
  value = azurerm_storage_sync_server_endpoint.this.server_local_path
}

output "cloud_tiering_enabled" {
  value = azurerm_storage_sync_server_endpoint.this.cloud_tiering_enabled
}

output "volume_free_space_percent" {
  value = azurerm_storage_sync_server_endpoint.this.volume_free_space_percent
}

output "tier_files_older_than_days" {
  value = azurerm_storage_sync_server_endpoint.this.tier_files_older_than_days
}

output "initial_download_policy" {
  value = azurerm_storage_sync_server_endpoint.this.initial_download_policy
}

output "local_cache_mode" {
  value = azurerm_storage_sync_server_endpoint.this.local_cache_mode
}

output "id" {
  description = "The ID of the Storage Sync."
  value       = azurerm_storage_sync_server_endpoint.this.id
}

