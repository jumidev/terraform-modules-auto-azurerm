output "eventhub_namespace_id" {
  value = azurerm_eventhub_namespace_customer_managed_key.this.eventhub_namespace_id
}

output "key_vault_key_ids" {
  value = azurerm_eventhub_namespace_customer_managed_key.this.key_vault_key_ids
}

output "infrastructure_encryption_enabled" {
  value = azurerm_eventhub_namespace_customer_managed_key.this.infrastructure_encryption_enabled
}

output "user_assigned_identity_id" {
  value = azurerm_eventhub_namespace_customer_managed_key.this.user_assigned_identity_id
}

output "id" {
  description = "The ID of the EventHub Namespace."
  value       = azurerm_eventhub_namespace_customer_managed_key.this.id
}

