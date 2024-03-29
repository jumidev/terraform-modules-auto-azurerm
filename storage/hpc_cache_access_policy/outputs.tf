output "name" {
  value = azurerm_hpc_cache_access_policy.this.name
}

output "hpc_cache_id" {
  value = azurerm_hpc_cache_access_policy.this.hpc_cache_id
}

output "access_rule" {
  value = azurerm_hpc_cache_access_policy.this.access_rule
}

output "anonymous_gid" {
  description = "The anonymous GID used when 'root_squash_enabled' is 'true'. In addition to the Arguments listed above - the following Attributes are exported:"
  value       = azurerm_hpc_cache_access_policy.this.anonymous_gid
}

output "id" {
  description = "The ID of the HPC Cache Access Policy."
  value       = azurerm_hpc_cache_access_policy.this.id
}

