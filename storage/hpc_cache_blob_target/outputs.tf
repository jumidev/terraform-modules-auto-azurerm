output "cache_name" {
  value = azurerm_hpc_cache_blob_target.this.cache_name
}

output "name" {
  value = azurerm_hpc_cache_blob_target.this.name
}

output "resource_group_name" {
  value = azurerm_hpc_cache_blob_target.this.resource_group_name
}

output "namespace_path" {
  value = azurerm_hpc_cache_blob_target.this.namespace_path
}

output "storage_container_id" {
  value = azurerm_hpc_cache_blob_target.this.storage_container_id
}

output "access_policy_name" {
  value = azurerm_hpc_cache_blob_target.this.access_policy_name
}

output "access_policy_name" {
  description = "The name of the access policy applied to this target. Defaults to 'default'. In addition to the Arguments listed above - the following Attributes are exported:"
  value       = azurerm_hpc_cache_blob_target.this.access_policy_name
}

output "id" {
  description = "The ID of the HPC Cache Blob Target."
  value       = azurerm_hpc_cache_blob_target.this.id
}

