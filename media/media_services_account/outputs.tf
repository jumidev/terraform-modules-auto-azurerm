output "name" {
  value = azurerm_media_services_account.this.name
}

output "resource_group_name" {
  value = azurerm_media_services_account.this.resource_group_name
}

output "location" {
  value = azurerm_media_services_account.this.location
}

output "storage_account" {
  value = azurerm_media_services_account.this.storage_account
}

output "encryption" {
  value = azurerm_media_services_account.this.encryption
}

output "identity" {
  value = azurerm_media_services_account.this.identity
}

output "public_network_access_enabled" {
  value = azurerm_media_services_account.this.public_network_access_enabled
}

output "storage_authentication_type" {
  value = azurerm_media_services_account.this.storage_authentication_type
}

output "key_delivery_access_control" {
  value = azurerm_media_services_account.this.key_delivery_access_control
}

output "tags" {
  value = azurerm_media_services_account.this.tags
}

output "id" {
  description = "The ID of the Media Services Account."
  value       = azurerm_media_services_account.this.id
}

output "identity" {
  description = "An 'identity' block."
  value       = azurerm_media_services_account.this.identity
}

output "current_key_identifier" {
  description = "The current key used to encrypt the Media Services Account, including the key version."
  value       = azurerm_media_services_account.this.current_key_identifier
}

output "principal_id" {
  description = "The Principal ID associated with this Managed Service Identity."
  value       = azurerm_media_services_account.this.principal_id
}

output "tenant_id" {
  description = "The Tenant ID associated with this Managed Service Identity."
  value       = azurerm_media_services_account.this.tenant_id
}

