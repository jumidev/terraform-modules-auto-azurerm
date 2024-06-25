output "name" {
  value = azurerm_storage_container.this.name
}

output "storage_account_name" {
  value = azurerm_storage_container.this.storage_account_name
}

output "container_access_type" {
  value = azurerm_storage_container.this.container_access_type
}

output "default_encryption_scope" {
  value = azurerm_storage_container.this.default_encryption_scope
}

output "encryption_scope_override_enabled" {
  value = azurerm_storage_container.this.encryption_scope_override_enabled
}

output "metadata" {
  value = azurerm_storage_container.this.metadata
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

