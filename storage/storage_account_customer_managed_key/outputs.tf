output "storage_account_id" {
  value = azurerm_storage_account_customer_managed_key.this.storage_account_id
}

output "key_name" {
  value = azurerm_storage_account_customer_managed_key.this.key_name
}

output "key_vault_id" {
  value = azurerm_storage_account_customer_managed_key.this.key_vault_id
}

output "key_vault_uri" {
  value = azurerm_storage_account_customer_managed_key.this.key_vault_uri
}

output "key_version" {
  value = azurerm_storage_account_customer_managed_key.this.key_version
}

output "user_assigned_identity_id" {
  value = azurerm_storage_account_customer_managed_key.this.user_assigned_identity_id
}

output "federated_identity_client_id" {
  value = azurerm_storage_account_customer_managed_key.this.federated_identity_client_id
}

output "id" {
  description = "The ID of the Storage Account."
  value       = azurerm_storage_account_customer_managed_key.this.id
}

