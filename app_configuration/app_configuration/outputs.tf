output "name" {
  value = azurerm_app_configuration.this.name
}

output "resource_group_name" {
  value = azurerm_app_configuration.this.resource_group_name
}

output "location" {
  value = azurerm_app_configuration.this.location
}

output "identity" {
  value = azurerm_app_configuration.this.identity
}

output "encryption" {
  value = azurerm_app_configuration.this.encryption
}

output "local_auth_enabled" {
  value = azurerm_app_configuration.this.local_auth_enabled
}

output "public_network_access" {
  value = azurerm_app_configuration.this.public_network_access
}

output "purge_protection_enabled" {
  value = azurerm_app_configuration.this.purge_protection_enabled
}

output "replica" {
  value = azurerm_app_configuration.this.replica
}

output "sku" {
  value = azurerm_app_configuration.this.sku
}

output "soft_delete_retention_days" {
  value = azurerm_app_configuration.this.soft_delete_retention_days
}

output "tags" {
  value = azurerm_app_configuration.this.tags
}

output "id" {
  description = "The ID of the Access Key."
  value       = azurerm_app_configuration.this.id
}

output "endpoint" {
  description = "The URL of the App Configuration Replica."
  value       = azurerm_app_configuration.this.endpoint
}

output "primary_read_key" {
  description = "A 'primary_read_key' block containing the primary read access key."
  value       = azurerm_app_configuration.this.primary_read_key
}

output "primary_write_key" {
  description = "A 'primary_write_key' block containing the primary write access key."
  value       = azurerm_app_configuration.this.primary_write_key
}

output "secondary_read_key" {
  description = "A 'secondary_read_key' block containing the secondary read access key."
  value       = azurerm_app_configuration.this.secondary_read_key
}

output "secondary_write_key" {
  description = "A 'secondary_write_key' block containing the secondary write access key."
  value       = azurerm_app_configuration.this.secondary_write_key
}

output "identity" {
  description = "An 'identity' block."
  value       = azurerm_app_configuration.this.identity
}

output "principal_id" {
  description = "The Principal ID associated with this Managed Service Identity."
  value       = azurerm_app_configuration.this.principal_id
}

output "tenant_id" {
  description = "The Tenant ID associated with this Managed Service Identity."
  value       = azurerm_app_configuration.this.tenant_id
}

output "connection_string" {
  description = "The Connection String for this Access Key - comprising of the Endpoint, ID and Secret."
  value       = azurerm_app_configuration.this.connection_string
}

output "secret" {
  description = "The Secret of the Access Key."
  value       = azurerm_app_configuration.this.secret
}

