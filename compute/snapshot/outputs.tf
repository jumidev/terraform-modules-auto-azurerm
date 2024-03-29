output "name" {
  value = azurerm_snapshot.this.name
}

output "resource_group_name" {
  value = azurerm_snapshot.this.resource_group_name
}

output "location" {
  value = azurerm_snapshot.this.location
}

output "create_option" {
  value = azurerm_snapshot.this.create_option
}

output "source_uri" {
  value = azurerm_snapshot.this.source_uri
}

output "source_resource_id" {
  value = azurerm_snapshot.this.source_resource_id
}

output "storage_account_id" {
  value = azurerm_snapshot.this.storage_account_id
}

output "disk_size_gb" {
  value = azurerm_snapshot.this.disk_size_gb
}

output "encryption_settings" {
  value = azurerm_snapshot.this.encryption_settings
}

output "incremental_enabled" {
  value = azurerm_snapshot.this.incremental_enabled
}

output "tags" {
  value = azurerm_snapshot.this.tags
}

output "source_vault_id" {
  description = "The ID of the source Key Vault. This can be found as 'id' on the 'azurerm_key_vault' resource. In addition to the Arguments listed above - the following Attributes are exported:"
  value       = azurerm_snapshot.this.source_vault_id
}

output "id" {
  description = "The Snapshot ID."
  value       = azurerm_snapshot.this.id
}

output "disk_size_gb" {
  description = "The Size of the Snapshotted Disk in GB."
  value       = azurerm_snapshot.this.disk_size_gb
}

output "trusted_launch_enabled" {
  description = "Whether Trusted Launch is enabled for the Snapshot."
  value       = azurerm_snapshot.this.trusted_launch_enabled
}

