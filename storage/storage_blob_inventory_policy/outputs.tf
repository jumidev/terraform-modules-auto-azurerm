output "storage_account_id" {
  value = azurerm_storage_blob_inventory_policy.this.storage_account_id
}

output "rules" {
  value = azurerm_storage_blob_inventory_policy.this.rules
}

output "id" {
  description = "The ID of the Storage Blob Inventory Policy."
  value       = azurerm_storage_blob_inventory_policy.this.id
}

