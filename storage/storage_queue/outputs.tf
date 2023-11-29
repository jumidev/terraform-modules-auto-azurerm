output "name" {
  value = azurerm_storage_queue.this.name
}

output "storage_account_name" {
  value = azurerm_storage_queue.this.storage_account_name
}

output "metadata" {
  value = azurerm_storage_queue.this.metadata
}

output "id" {
  description = "The ID of the Storage Queue."
  value       = azurerm_storage_queue.this.id
}

output "resource_manager_id" {
  description = "The Resource Manager ID of this Storage Queue."
  value       = azurerm_storage_queue.this.resource_manager_id
}

