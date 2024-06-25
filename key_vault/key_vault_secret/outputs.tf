output "name" {
  value = azurerm_key_vault_secret.this.name
}

output "value" {
  value = azurerm_key_vault_secret.this.value
}

output "key_vault_id" {
  value = azurerm_key_vault_secret.this.key_vault_id
}

output "content_type" {
  value = azurerm_key_vault_secret.this.content_type
}

output "tags" {
  value = azurerm_key_vault_secret.this.tags
}

output "not_before_date" {
  value = azurerm_key_vault_secret.this.not_before_date
}

output "expiration_date" {
  value = azurerm_key_vault_secret.this.expiration_date
}

output "id" {
  description = "The Key Vault Secret ID."
  value       = azurerm_key_vault_secret.this.id
}

output "resource_id" {
  description = "The (Versioned) ID for this Key Vault Secret. This property points to a specific version of a Key Vault Secret, as such using this won't auto-rotate values if used in other Azure Services."
  value       = azurerm_key_vault_secret.this.resource_id
}

output "resource_versionless_id" {
  description = "The Versionless ID of the Key Vault Secret. This property allows other Azure Services (that support it) to auto-rotate their value when the Key Vault Secret is updated."
  value       = azurerm_key_vault_secret.this.resource_versionless_id
}

output "version" {
  description = "The current version of the Key Vault Secret."
  value       = azurerm_key_vault_secret.this.version
}

output "versionless_id" {
  description = "The Base ID of the Key Vault Secret."
  value       = azurerm_key_vault_secret.this.versionless_id
}

