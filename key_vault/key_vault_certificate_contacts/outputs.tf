output "key_vault_id" {
  value = azurerm_key_vault_certificate_contacts.this.key_vault_id
}

output "contact" {
  value = azurerm_key_vault_certificate_contacts.this.contact
}

output "phone" {
  description = "Phone number of the contact. In addition to the Arguments listed above - the following Attributes are exported:"
  value       = azurerm_key_vault_certificate_contacts.this.phone
}

output "id" {
  description = "The ID of the Key Vault Certificate Contacts."
  value       = azurerm_key_vault_certificate_contacts.this.id
}

