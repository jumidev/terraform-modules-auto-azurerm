output "name" {
  value = azurerm_key_vault_managed_storage_account.this.name
}

output "key_vault_id" {
  value = azurerm_key_vault_managed_storage_account.this.key_vault_id
}

output "storage_account_id" {
  value = azurerm_key_vault_managed_storage_account.this.storage_account_id
}

output "storage_account_key" {
  value = azurerm_key_vault_managed_storage_account.this.storage_account_key
}

output "regenerate_key_automatically" {
  value = azurerm_key_vault_managed_storage_account.this.regenerate_key_automatically
}

output "regeneration_period" {
  value = azurerm_key_vault_managed_storage_account.this.regeneration_period
}

output "tags" {
  value = azurerm_key_vault_managed_storage_account.this.tags
}

output "id" {
  description = "The ID of the Key Vault Managed Storage Account."
  value       = azurerm_key_vault_managed_storage_account.this.id
}

