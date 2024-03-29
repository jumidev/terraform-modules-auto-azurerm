output "name" {
  value = azurerm_key_vault_key.this.name
}

output "key_vault_id" {
  value = azurerm_key_vault_key.this.key_vault_id
}

output "key_type" {
  value = azurerm_key_vault_key.this.key_type
}

output "key_size" {
  value = azurerm_key_vault_key.this.key_size
}

output "curve" {
  value = azurerm_key_vault_key.this.curve
}

output "key_opts" {
  value = azurerm_key_vault_key.this.key_opts
}

output "not_before_date" {
  value = azurerm_key_vault_key.this.not_before_date
}

output "expiration_date" {
  value = azurerm_key_vault_key.this.expiration_date
}

output "tags" {
  value = azurerm_key_vault_key.this.tags
}

output "rotation_policy" {
  value = azurerm_key_vault_key.this.rotation_policy
}

output "time_before_expiry" {
  description = "Rotate automatically at a duration before expiry as an [ISO 8601 duration](https://en.wikipedia.org/wiki/ISO_8601#Durations). In addition to the Arguments listed above - the following Attributes are exported:"
  value       = azurerm_key_vault_key.this.time_before_expiry
}

output "id" {
  description = "The Key Vault Key ID."
  value       = azurerm_key_vault_key.this.id
}

output "resource_id" {
  description = "The (Versioned) ID for this Key Vault Key. This property points to a specific version of a Key Vault Key, as such using this won't auto-rotate values if used in other Azure Services."
  value       = azurerm_key_vault_key.this.resource_id
}

output "resource_versionless_id" {
  description = "The Versionless ID of the Key Vault Key. This property allows other Azure Services (that support it) to auto-rotate their value when the Key Vault Key is updated."
  value       = azurerm_key_vault_key.this.resource_versionless_id
}

output "version" {
  description = "The current version of the Key Vault Key."
  value       = azurerm_key_vault_key.this.version
}

output "versionless_id" {
  description = "The Base ID of the Key Vault Key."
  value       = azurerm_key_vault_key.this.versionless_id
}

output "public_key_pem" {
  description = "The PEM encoded public key of this Key Vault Key."
  value       = azurerm_key_vault_key.this.public_key_pem
}

output "public_key_openssh" {
  description = "The OpenSSH encoded public key of this Key Vault Key."
  value       = azurerm_key_vault_key.this.public_key_openssh
}

