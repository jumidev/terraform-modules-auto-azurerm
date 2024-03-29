output "name" {
  value = azurerm_key_vault_certificate.this.name
}

output "key_vault_id" {
  value = azurerm_key_vault_certificate.this.key_vault_id
}

output "certificate" {
  value = azurerm_key_vault_certificate.this.certificate
}

output "certificate_policy" {
  value = azurerm_key_vault_certificate.this.certificate_policy
}

output "tags" {
  value = azurerm_key_vault_certificate.this.tags
}

output "upns" {
  description = "A list of User Principal Names identified by the Certificate. In addition to the Arguments listed above - the following Attributes are exported:"
  value       = azurerm_key_vault_certificate.this.upns
}

output "id" {
  description = "The Key Vault Certificate ID."
  value       = azurerm_key_vault_certificate.this.id
}

output "secret_id" {
  description = "The ID of the associated Key Vault Secret."
  value       = azurerm_key_vault_certificate.this.secret_id
}

output "version" {
  description = "The current version of the Key Vault Certificate."
  value       = azurerm_key_vault_certificate.this.version
}

output "versionless_id" {
  description = "The Base ID of the Key Vault Certificate."
  value       = azurerm_key_vault_certificate.this.versionless_id
}

output "versionless_secret_id" {
  description = "The Base ID of the Key Vault Secret."
  value       = azurerm_key_vault_certificate.this.versionless_secret_id
}

output "certificate_data" {
  description = "The raw Key Vault Certificate data represented as a hexadecimal string."
  value       = azurerm_key_vault_certificate.this.certificate_data
}

output "certificate_data_base64" {
  description = "The Base64 encoded Key Vault Certificate data."
  value       = azurerm_key_vault_certificate.this.certificate_data_base64
}

output "thumbprint" {
  description = "The X509 Thumbprint of the Key Vault Certificate represented as a hexadecimal string."
  value       = azurerm_key_vault_certificate.this.thumbprint
}

output "certificate_attribute" {
  description = "A 'certificate_attribute' block."
  value       = azurerm_key_vault_certificate.this.certificate_attribute
}

output "resource_manager_id" {
  description = "The (Versioned) ID for this Key Vault Certificate. This property points to a specific version of a Key Vault Certificate, as such using this won't auto-rotate values if used in other Azure Services."
  value       = azurerm_key_vault_certificate.this.resource_manager_id
}

output "resource_manager_versionless_id" {
  description = "The Versionless ID of the Key Vault Certificate. This property allows other Azure Services (that support it) to auto-rotate their value when the Key Vault Certificate is updated."
  value       = azurerm_key_vault_certificate.this.resource_manager_versionless_id
}

output "created" {
  description = "The create time of the Key Vault Certificate."
  value       = azurerm_key_vault_certificate.this.created
}

output "enabled" {
  description = "whether the Key Vault Certificate is enabled."
  value       = azurerm_key_vault_certificate.this.enabled
}

output "expires" {
  description = "The expires time of the Key Vault Certificate."
  value       = azurerm_key_vault_certificate.this.expires
}

output "not_before" {
  description = "The not before valid time of the Key Vault Certificate."
  value       = azurerm_key_vault_certificate.this.not_before
}

output "recovery_level" {
  description = "The deletion recovery level of the Key Vault Certificate."
  value       = azurerm_key_vault_certificate.this.recovery_level
}

output "updated" {
  description = "The recent update time of the Key Vault Certificate."
  value       = azurerm_key_vault_certificate.this.updated
}

