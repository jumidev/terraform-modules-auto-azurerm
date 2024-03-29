output "name" {
  value = azurerm_storage_encryption_scope.this.name
}

output "source" {
  value = azurerm_storage_encryption_scope.this.source
}

output "storage_account_id" {
  value = azurerm_storage_encryption_scope.this.storage_account_id
}

output "infrastructure_encryption_required" {
  value = azurerm_storage_encryption_scope.this.infrastructure_encryption_required
}

output "key_vault_key_id" {
  value = azurerm_storage_encryption_scope.this.key_vault_key_id
}

output "key_vault_key_id" {
  description = "The ID of the Key Vault Key. Required when 'source' is 'Microsoft.KeyVault'. In addition to the Arguments listed above - the following Attributes are exported:"
  value       = azurerm_storage_encryption_scope.this.key_vault_key_id
}

output "id" {
  description = "The ID of the Storage Encryption Scope."
  value       = azurerm_storage_encryption_scope.this.id
}

