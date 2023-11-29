output "cognitive_account_id" {
  value = azurerm_cognitive_account_customer_managed_key.this.cognitive_account_id
}

output "key_vault_key_id" {
  value = azurerm_cognitive_account_customer_managed_key.this.key_vault_key_id
}

output "identity_client_id" {
  value = azurerm_cognitive_account_customer_managed_key.this.identity_client_id
}

output "id" {
  description = "The ID of the Cognitive Account."
  value       = azurerm_cognitive_account_customer_managed_key.this.id
}

