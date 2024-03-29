output "name" {
  value = azurerm_storage_queue.this.name
}

output "storage_account_name" {
  value = azurerm_storage_queue.this.storage_account_name
}

output "metadata" {
  value = azurerm_storage_queue.this.metadata
}

output "metadata" {
  description = "A mapping of MetaData which should be assigned to this Storage Queue. In addition to the Arguments listed above - the following Attributes are exported:"
  value       = azurerm_storage_queue.this.metadata
}

output "id" {
  description = "The ID of the Storage Queue."
  value       = azurerm_storage_queue.this.id
}

output "resource_manager_id" {
  description = "The Resource Manager ID of this Storage Queue."
  value       = azurerm_storage_queue.this.resource_manager_id
}

