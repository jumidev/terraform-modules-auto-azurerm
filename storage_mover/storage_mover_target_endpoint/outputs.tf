output "name" {
  value = azurerm_storage_mover_target_endpoint.this.name
}

output "storage_mover_id" {
  value = azurerm_storage_mover_target_endpoint.this.storage_mover_id
}

output "storage_account_id" {
  value = azurerm_storage_mover_target_endpoint.this.storage_account_id
}

output "storage_container_name" {
  value = azurerm_storage_mover_target_endpoint.this.storage_container_name
}

output "description" {
  value = azurerm_storage_mover_target_endpoint.this.description
}

output "id" {
  description = "The ID of the Storage Mover Target Endpoint."
  value       = azurerm_storage_mover_target_endpoint.this.id
}

