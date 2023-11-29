output "key_vault_id" {
  value = azurerm_key_vault_access_policy.this.key_vault_id
}

output "tenant_id" {
  value = azurerm_key_vault_access_policy.this.tenant_id
}

output "object_id" {
  value = azurerm_key_vault_access_policy.this.object_id
}

output "application_id" {
  value = azurerm_key_vault_access_policy.this.application_id
}

output "certificate_permissions" {
  value = azurerm_key_vault_access_policy.this.certificate_permissions
}

output "key_permissions" {
  value = azurerm_key_vault_access_policy.this.key_permissions
}

output "secret_permissions" {
  value = azurerm_key_vault_access_policy.this.secret_permissions
}

output "storage_permissions" {
  value = azurerm_key_vault_access_policy.this.storage_permissions
}

output "id" {
  description = "Key Vault Access Policy ID."
  value       = azurerm_key_vault_access_policy.this.id
}

