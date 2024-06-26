output "name" {
  value = azurerm_storage_share.this.name
}

output "storage_account_name" {
  value = azurerm_storage_share.this.storage_account_name
}

output "access_tier" {
  value = azurerm_storage_share.this.access_tier
}

output "acl" {
  value = azurerm_storage_share.this.acl
}

output "enabled_protocol" {
  value = azurerm_storage_share.this.enabled_protocol
}

output "quota" {
  value = azurerm_storage_share.this.quota
}

output "metadata" {
  value = azurerm_storage_share.this.metadata
}

output "expiry" {
  description = "The time at which this Access Policy should be valid until, in [ISO8601](https://en.wikipedia.org/wiki/ISO_8601) format. In addition to the Arguments listed above - the following Attributes are exported:"
  value       = azurerm_storage_share.this.expiry
}

output "id" {
  description = "The ID of the File Share."
  value       = azurerm_storage_share.this.id
}

output "resource_manager_id" {
  description = "The Resource Manager ID of this File Share."
  value       = azurerm_storage_share.this.resource_manager_id
}

output "url" {
  description = "The URL of the File Share"
  value       = azurerm_storage_share.this.url
}

