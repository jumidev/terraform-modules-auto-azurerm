output "name" {
  value = azurerm_storage_sync.this.name
}

output "resource_group_name" {
  value = azurerm_storage_sync.this.resource_group_name
}

output "location" {
  value = azurerm_storage_sync.this.location
}

output "incoming_traffic_policy" {
  value = azurerm_storage_sync.this.incoming_traffic_policy
}

output "tags" {
  value = azurerm_storage_sync.this.tags
}

output "tags" {
  description = "A mapping of tags which should be assigned to the Storage Sync. In addition to the Arguments listed above - the following Attributes are exported:"
  value       = azurerm_storage_sync.this.tags
}

output "id" {
  description = "The ID of the Storage Sync."
  value       = azurerm_storage_sync.this.id
}

