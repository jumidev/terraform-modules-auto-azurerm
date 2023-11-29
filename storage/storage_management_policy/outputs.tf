output "storage_account_id" {
  value = azurerm_storage_management_policy.this.storage_account_id
}

output "rule" {
  value = azurerm_storage_management_policy.this.rule
}

output "id" {
  description = "The ID of the Storage Account Management Policy."
  value       = azurerm_storage_management_policy.this.id
}

