output "name" {
  value = azurerm_disk_encryption_set.this.name
}

output "resource_group_name" {
  value = azurerm_disk_encryption_set.this.resource_group_name
}

output "location" {
  value = azurerm_disk_encryption_set.this.location
}

output "key_vault_key_id" {
  value = azurerm_disk_encryption_set.this.key_vault_key_id
}

output "auto_key_rotation_enabled" {
  value = azurerm_disk_encryption_set.this.auto_key_rotation_enabled
}

output "encryption_type" {
  value = azurerm_disk_encryption_set.this.encryption_type
}

output "federated_client_id" {
  value = azurerm_disk_encryption_set.this.federated_client_id
}

output "identity" {
  value = azurerm_disk_encryption_set.this.identity
}

output "tags" {
  value = azurerm_disk_encryption_set.this.tags
}

output "identity_ids" {
  description = "A list of User Assigned Managed Identity IDs to be assigned to this Disk Encryption Set. ~> **NOTE:** This is required when 'type' is set to 'UserAssigned' or 'SystemAssigned, UserAssigned'. In addition to the Arguments listed above - the following Attributes are exported:"
  value       = azurerm_disk_encryption_set.this.identity_ids
}

output "id" {
  description = "The ID of the Disk Encryption Set."
  value       = azurerm_disk_encryption_set.this.id
}

output "key_vault_key_url" {
  description = "The URL for the Key Vault Key or Key Vault Secret that is currently being used by the service."
  value       = azurerm_disk_encryption_set.this.key_vault_key_url
}

output "principal_id" {
  description = "The (Client) ID of the Service Principal."
  value       = azurerm_disk_encryption_set.this.principal_id
}

output "tenant_id" {
  description = "The ID of the Tenant the Service Principal is assigned in."
  value       = azurerm_disk_encryption_set.this.tenant_id
}

