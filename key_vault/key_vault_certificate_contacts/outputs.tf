output "key_vault_id" {
  value = azurerm_key_vault_certificate_contacts.this.key_vault_id
}

output "contact" {
  value = azurerm_key_vault_certificate_contacts.this.contact
}

output "id" {
  description = "The ID of the Key Vault Certificate Contacts."
  value       = azurerm_key_vault_certificate_contacts.this.id
}

