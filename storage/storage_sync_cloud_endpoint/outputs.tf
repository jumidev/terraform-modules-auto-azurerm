output "name" {
  value = azurerm_storage_sync_cloud_endpoint.this.name
}

output "storage_sync_group_id" {
  value = azurerm_storage_sync_cloud_endpoint.this.storage_sync_group_id
}

output "file_share_name" {
  value = azurerm_storage_sync_cloud_endpoint.this.file_share_name
}

output "storage_account_id" {
  value = azurerm_storage_sync_cloud_endpoint.this.storage_account_id
}

output "storage_account_tenant_id" {
  value = azurerm_storage_sync_cloud_endpoint.this.storage_account_tenant_id
}

output "id" {
  description = "The ID of the Storage Sync Cloud Endpoint."
  value       = azurerm_storage_sync_cloud_endpoint.this.id
}

