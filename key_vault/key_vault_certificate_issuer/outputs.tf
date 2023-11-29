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

output "id" {
  description = "The ID of the Key Vault Certificate Issuer."
  value       = azurerm_key_vault_certificate_issuer.this.id
}

