output "name" {
  value = azurerm_data_protection_backup_vault.this.name
}

output "resource_group_name" {
  value = azurerm_data_protection_backup_vault.this.resource_group_name
}

output "location" {
  value = azurerm_data_protection_backup_vault.this.location
}

output "datastore_type" {
  value = azurerm_data_protection_backup_vault.this.datastore_type
}

output "redundancy" {
  value = azurerm_data_protection_backup_vault.this.redundancy
}

output "identity" {
  value = azurerm_data_protection_backup_vault.this.identity
}

output "tags" {
  value = azurerm_data_protection_backup_vault.this.tags
}

output "id" {
  description = "The ID of the Backup Vault."
  value       = azurerm_data_protection_backup_vault.this.id
}

output "identity" {
  description = "An 'identity' block, which contains the Identity information for this Backup Vault."
  value       = azurerm_data_protection_backup_vault.this.identity
}

output "principal_id" {
  description = "The Principal ID for the Service Principal associated with the Identity of this Backup Vault."
  value       = azurerm_data_protection_backup_vault.this.principal_id
}

output "tenant_id" {
  description = "The Tenant ID for the Service Principal associated with the Identity of this Backup Vault."
  value       = azurerm_data_protection_backup_vault.this.tenant_id
}

