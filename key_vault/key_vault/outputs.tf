output "name" {
  value = azurerm_key_vault.this.name
}

output "location" {
  value = azurerm_key_vault.this.location
}

output "resource_group_name" {
  value = azurerm_key_vault.this.resource_group_name
}

output "sku_name" {
  value = azurerm_key_vault.this.sku_name
}

output "tenant_id" {
  value = azurerm_key_vault.this.tenant_id
}

output "access_policy" {
  value = azurerm_key_vault.this.access_policy
}

output "enabled_for_deployment" {
  value = azurerm_key_vault.this.enabled_for_deployment
}

output "enabled_for_disk_encryption" {
  value = azurerm_key_vault.this.enabled_for_disk_encryption
}

output "enabled_for_template_deployment" {
  value = azurerm_key_vault.this.enabled_for_template_deployment
}

output "enable_rbac_authorization" {
  value = azurerm_key_vault.this.enable_rbac_authorization
}

output "network_acls" {
  value = azurerm_key_vault.this.network_acls
}

output "purge_protection_enabled" {
  value = azurerm_key_vault.this.purge_protection_enabled
}

output "public_network_access_enabled" {
  value = azurerm_key_vault.this.public_network_access_enabled
}

output "soft_delete_retention_days" {
  value = azurerm_key_vault.this.soft_delete_retention_days
}

output "contact" {
  value = azurerm_key_vault.this.contact
}

output "tags" {
  value = azurerm_key_vault.this.tags
}

output "phone" {
  description = "Phone number of the contact. In addition to the Arguments listed above - the following Attributes are exported:"
  value       = azurerm_key_vault.this.phone
}

output "id" {
  description = "The ID of the Key Vault."
  value       = azurerm_key_vault.this.id
}

output "vault_uri" {
  description = "The URI of the Key Vault, used for performing operations on keys and secrets."
  value       = azurerm_key_vault.this.vault_uri
}

