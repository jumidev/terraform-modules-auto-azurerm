output "storage_account_id" {
  value = azurerm_storage_blob_inventory_policy.this.storage_account_id
}

output "rules" {
  value = azurerm_storage_blob_inventory_policy.this.rules
}

output "filter" {
  description = "A 'filter' block. Can only be set when the 'scope' is 'Blob'. In addition to the Arguments listed above - the following Attributes are exported:"
  value       = azurerm_storage_blob_inventory_policy.this.filter
}

output "id" {
  description = "The ID of the Storage Blob Inventory Policy."
  value       = azurerm_storage_blob_inventory_policy.this.id
}

