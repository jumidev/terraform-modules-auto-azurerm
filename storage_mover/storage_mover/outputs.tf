output "name" {
  value = azurerm_storage_mover.this.name
}

output "location" {
  value = azurerm_storage_mover.this.location
}

output "resource_group_name" {
  value = azurerm_storage_mover.this.resource_group_name
}

output "description" {
  value = azurerm_storage_mover.this.description
}

output "tags" {
  value = azurerm_storage_mover.this.tags
}

output "id" {
  description = "The ID of the Storage Mover."
  value       = azurerm_storage_mover.this.id
}

