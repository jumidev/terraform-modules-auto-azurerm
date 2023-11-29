output "name" {
  value = azurerm_hpc_cache_nfs_target.this.name
}

output "resource_group_name" {
  value = azurerm_hpc_cache_nfs_target.this.resource_group_name
}

output "cache_name" {
  value = azurerm_hpc_cache_nfs_target.this.cache_name
}

output "target_host_name" {
  value = azurerm_hpc_cache_nfs_target.this.target_host_name
}

output "usage_model" {
  value = azurerm_hpc_cache_nfs_target.this.usage_model
}

output "id" {
  description = "The ID of the HPC Cache NFS Target."
  value       = azurerm_hpc_cache_nfs_target.this.id
}

