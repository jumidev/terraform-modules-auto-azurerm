output "name" {
  value = azurerm_storage_container.this.name
}

output "storage_account_name" {
  value = azurerm_storage_container.this.storage_account_name
}

output "container_access_type" {
  value = azurerm_storage_container.this.container_access_type
}

output "metadata" {
  value = azurerm_storage_container.this.metadata
}

output "metadata" {
  description = "A mapping of MetaData for this Container. All metadata keys should be lowercase. In addition to the Arguments listed above - the following Attributes are exported:"
  value       = azurerm_storage_container.this.metadata
}

output "id" {
  description = "The ID of the Storage Container."
  value       = azurerm_storage_container.this.id
}

output "has_immutability_policy" {
  description = "Is there an Immutability Policy configured on this Storage Container?"
  value       = azurerm_storage_container.this.has_immutability_policy
}

output "has_legal_hold" {
  description = "Is there a Legal Hold configured on this Storage Container?"
  value       = azurerm_storage_container.this.has_legal_hold
}

output "resource_manager_id" {
  description = "The Resource Manager ID of this Storage Container."
  value       = azurerm_storage_container.this.resource_manager_id
}

