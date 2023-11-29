output "name" {
  value = azurerm_hpc_cache.this.name
}

output "resource_group_name" {
  value = azurerm_hpc_cache.this.resource_group_name
}

output "location" {
  value = azurerm_hpc_cache.this.location
}

output "cache_size_in_gb" {
  value = azurerm_hpc_cache.this.cache_size_in_gb
}

output "subnet_id" {
  value = azurerm_hpc_cache.this.subnet_id
}

output "sku_name" {
  value = azurerm_hpc_cache.this.sku_name
}

output "mtu" {
  value = azurerm_hpc_cache.this.mtu
}

output "default_access_policy" {
  value = azurerm_hpc_cache.this.default_access_policy
}

output "ntp_server" {
  value = azurerm_hpc_cache.this.ntp_server
}

output "dns" {
  value = azurerm_hpc_cache.this.dns
}

output "directory_active_directory" {
  value = azurerm_hpc_cache.this.directory_active_directory
}

output "directory_flat_file" {
  value = azurerm_hpc_cache.this.directory_flat_file
}

output "directory_ldap" {
  value = azurerm_hpc_cache.this.directory_ldap
}

output "identity" {
  value = azurerm_hpc_cache.this.identity
}

output "key_vault_key_id" {
  value = azurerm_hpc_cache.this.key_vault_key_id
}

output "automatically_rotate_key_to_latest_enabled" {
  value = azurerm_hpc_cache.this.automatically_rotate_key_to_latest_enabled
}

output "tags" {
  value = azurerm_hpc_cache.this.tags
}

output "id" {
  description = "The 'id' of the HPC Cache."
  value       = azurerm_hpc_cache.this.id
}

output "identity" {
  description = "An 'identity' block."
  value       = azurerm_hpc_cache.this.identity
}

output "mount_addresses" {
  description = "A list of IP Addresses where the HPC Cache can be mounted."
  value       = azurerm_hpc_cache.this.mount_addresses
}

output "principal_id" {
  description = "The Principal ID associated with this Managed Service Identity."
  value       = azurerm_hpc_cache.this.principal_id
}

output "tenant_id" {
  description = "The Tenant ID associated with this Managed Service Identity."
  value       = azurerm_hpc_cache.this.tenant_id
}

