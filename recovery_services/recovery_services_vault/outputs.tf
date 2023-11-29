output "name" {
  value = azurerm_recovery_services_vault.this.name
}

output "resource_group_name" {
  value = azurerm_recovery_services_vault.this.resource_group_name
}

output "location" {
  value = azurerm_recovery_services_vault.this.location
}

output "tags" {
  value = azurerm_recovery_services_vault.this.tags
}

output "identity" {
  value = azurerm_recovery_services_vault.this.identity
}

output "sku" {
  value = azurerm_recovery_services_vault.this.sku
}

output "public_network_access_enabled" {
  value = azurerm_recovery_services_vault.this.public_network_access_enabled
}

output "immutability" {
  value = azurerm_recovery_services_vault.this.immutability
}

output "storage_mode_type" {
  value = azurerm_recovery_services_vault.this.storage_mode_type
}

output "cross_region_restore_enabled" {
  value = azurerm_recovery_services_vault.this.cross_region_restore_enabled
}

output "soft_delete_enabled" {
  value = azurerm_recovery_services_vault.this.soft_delete_enabled
}

output "encryption" {
  value = azurerm_recovery_services_vault.this.encryption
}

output "classic_vmware_replication_enabled" {
  value = azurerm_recovery_services_vault.this.classic_vmware_replication_enabled
}

output "monitoring" {
  value = azurerm_recovery_services_vault.this.monitoring
}

output "id" {
  description = "The ID of the Recovery Services Vault."
  value       = azurerm_recovery_services_vault.this.id
}

output "identity" {
  description = "An 'identity' block."
  value       = azurerm_recovery_services_vault.this.identity
}

output "principal_id" {
  description = "The Principal ID associated with this Managed Service Identity."
  value       = azurerm_recovery_services_vault.this.principal_id
}

output "tenant_id" {
  description = "The Tenant ID associated with this Managed Service Identity."
  value       = azurerm_recovery_services_vault.this.tenant_id
}

