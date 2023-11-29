output "name" {
  value = azurerm_key_vault_managed_hardware_security_module.this.name
}

output "resource_group_name" {
  value = azurerm_key_vault_managed_hardware_security_module.this.resource_group_name
}

output "location" {
  value = azurerm_key_vault_managed_hardware_security_module.this.location
}

output "admin_object_ids" {
  value = azurerm_key_vault_managed_hardware_security_module.this.admin_object_ids
}

output "sku_name" {
  value = azurerm_key_vault_managed_hardware_security_module.this.sku_name
}

output "tenant_id" {
  value = azurerm_key_vault_managed_hardware_security_module.this.tenant_id
}

output "purge_protection_enabled" {
  value = azurerm_key_vault_managed_hardware_security_module.this.purge_protection_enabled
}

output "soft_delete_retention_days" {
  value = azurerm_key_vault_managed_hardware_security_module.this.soft_delete_retention_days
}

output "public_network_access_enabled" {
  value = azurerm_key_vault_managed_hardware_security_module.this.public_network_access_enabled
}

output "network_acls" {
  value = azurerm_key_vault_managed_hardware_security_module.this.network_acls
}

output "security_domain_key_vault_certificate_ids" {
  value = azurerm_key_vault_managed_hardware_security_module.this.security_domain_key_vault_certificate_ids
}

output "security_domain_quorum" {
  value = azurerm_key_vault_managed_hardware_security_module.this.security_domain_quorum
}

output "tags" {
  value = azurerm_key_vault_managed_hardware_security_module.this.tags
}

output "id" {
  description = "The Key Vault Secret Managed Hardware Security Module ID."
  value       = azurerm_key_vault_managed_hardware_security_module.this.id
}

output "hsm_uri" {
  description = "The URI of the Key Vault Managed Hardware Security Module, used for performing operations on keys."
  value       = azurerm_key_vault_managed_hardware_security_module.this.hsm_uri
}

output "security_domain_encrypted_data" {
  description = "This attribute can be used for disaster recovery or when creating another Managed HSM that shares the same security domain."
  value       = azurerm_key_vault_managed_hardware_security_module.this.security_domain_encrypted_data
}

