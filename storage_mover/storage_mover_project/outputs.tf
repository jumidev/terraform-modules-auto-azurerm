output "name" {
  value = azurerm_storage_mover_project.this.name
}

output "storage_mover_id" {
  value = azurerm_storage_mover_project.this.storage_mover_id
}

output "description" {
  value = azurerm_storage_mover_project.this.description
}

output "id" {
  description = "The ID of the Storage Mover Project."
  value       = azurerm_storage_mover_project.this.id
}

