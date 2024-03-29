output "key_vault_id" {
  value = azurerm_key_vault_certificate_issuer.this.key_vault_id
}

output "name" {
  value = azurerm_key_vault_certificate_issuer.this.name
}

output "provider_name" {
  value = azurerm_key_vault_certificate_issuer.this.provider_name
}

output "org_id" {
  value = azurerm_key_vault_certificate_issuer.this.org_id
}

output "account_id" {
  value = azurerm_key_vault_certificate_issuer.this.account_id
}

output "admin" {
  value = azurerm_key_vault_certificate_issuer.this.admin
}

output "password" {
  value     = azurerm_key_vault_certificate_issuer.this.password
  sensitive = true
}

output "phone" {
  description = "Phone number of the admin. In addition to the Arguments listed above - the following Attributes are exported:"
  value       = azurerm_key_vault_certificate_issuer.this.phone
}

output "id" {
  description = "The ID of the Key Vault Certificate Issuer."
  value       = azurerm_key_vault_certificate_issuer.this.id
}

