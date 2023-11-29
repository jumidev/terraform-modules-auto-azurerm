output "name" {
  value = azurerm_storage_mover_source_endpoint.this.name
}

output "storage_mover_id" {
  value = azurerm_storage_mover_source_endpoint.this.storage_mover_id
}

output "host" {
  value = azurerm_storage_mover_source_endpoint.this.host
}

output "export" {
  value = azurerm_storage_mover_source_endpoint.this.export
}

output "nfs_version" {
  value = azurerm_storage_mover_source_endpoint.this.nfs_version
}

output "description" {
  value = azurerm_storage_mover_source_endpoint.this.description
}

output "id" {
  description = "The ID of the Storage Mover Source Endpoint."
  value       = azurerm_storage_mover_source_endpoint.this.id
}

