output "name" {
  value = azurerm_batch_account.this.name
}

output "resource_group_name" {
  value = azurerm_batch_account.this.resource_group_name
}

output "location" {
  value = azurerm_batch_account.this.location
}

output "identity" {
  value = azurerm_batch_account.this.identity
}

output "network_profile" {
  value = azurerm_batch_account.this.network_profile
}

output "pool_allocation_mode" {
  value = azurerm_batch_account.this.pool_allocation_mode
}

output "public_network_access_enabled" {
  value = azurerm_batch_account.this.public_network_access_enabled
}

output "key_vault_reference" {
  value = azurerm_batch_account.this.key_vault_reference
}

output "storage_account_id" {
  value = azurerm_batch_account.this.storage_account_id
}

output "storage_account_authentication_mode" {
  value = azurerm_batch_account.this.storage_account_authentication_mode
}

output "storage_account_node_identity" {
  value = azurerm_batch_account.this.storage_account_node_identity
}

output "allowed_authentication_modes" {
  value = azurerm_batch_account.this.allowed_authentication_modes
}

output "encryption" {
  value = azurerm_batch_account.this.encryption
}

output "tags" {
  value = azurerm_batch_account.this.tags
}

output "id" {
  description = "The ID of the Batch Account."
  value       = azurerm_batch_account.this.id
}

output "identity" {
  description = "An 'identity' block."
  value       = azurerm_batch_account.this.identity
}

output "primary_access_key" {
  description = "The Batch account primary access key."
  value       = azurerm_batch_account.this.primary_access_key
}

output "secondary_access_key" {
  description = "The Batch account secondary access key."
  value       = azurerm_batch_account.this.secondary_access_key
}

output "account_endpoint" {
  description = "The account endpoint used to interact with the Batch service."
  value       = azurerm_batch_account.this.account_endpoint
}

output "principal_id" {
  description = "The Principal ID associated with this Managed Service Identity."
  value       = azurerm_batch_account.this.principal_id
}

output "tenant_id" {
  description = "The Tenant ID associated with this Managed Service Identity."
  value       = azurerm_batch_account.this.tenant_id
}

