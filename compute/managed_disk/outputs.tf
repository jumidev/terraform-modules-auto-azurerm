output "name" {
  value = azurerm_managed_disk.this.name
}

output "resource_group_name" {
  value = azurerm_managed_disk.this.resource_group_name
}

output "location" {
  value = azurerm_managed_disk.this.location
}

output "storage_account_type" {
  value = azurerm_managed_disk.this.storage_account_type
}

output "create_option" {
  value = azurerm_managed_disk.this.create_option
}

output "disk_encryption_set_id" {
  value = azurerm_managed_disk.this.disk_encryption_set_id
}

output "disk_iops_read_write" {
  value = azurerm_managed_disk.this.disk_iops_read_write
}

output "disk_mbps_read_write" {
  value = azurerm_managed_disk.this.disk_mbps_read_write
}

output "disk_iops_read_only" {
  value = azurerm_managed_disk.this.disk_iops_read_only
}

output "disk_mbps_read_only" {
  value = azurerm_managed_disk.this.disk_mbps_read_only
}

output "upload_size_bytes" {
  value = azurerm_managed_disk.this.upload_size_bytes
}

output "disk_size_gb" {
  value = azurerm_managed_disk.this.disk_size_gb
}

output "edge_zone" {
  value = azurerm_managed_disk.this.edge_zone
}

output "encryption_settings" {
  value = azurerm_managed_disk.this.encryption_settings
}

output "hyper_v_generation" {
  value = azurerm_managed_disk.this.hyper_v_generation
}

output "image_reference_id" {
  value = azurerm_managed_disk.this.image_reference_id
}

output "gallery_image_reference_id" {
  value = azurerm_managed_disk.this.gallery_image_reference_id
}

output "logical_sector_size" {
  value = azurerm_managed_disk.this.logical_sector_size
}

output "optimized_frequent_attach_enabled" {
  value = azurerm_managed_disk.this.optimized_frequent_attach_enabled
}

output "performance_plus_enabled" {
  value = azurerm_managed_disk.this.performance_plus_enabled
}

output "os_type" {
  value = azurerm_managed_disk.this.os_type
}

output "source_resource_id" {
  value = azurerm_managed_disk.this.source_resource_id
}

output "source_uri" {
  value = azurerm_managed_disk.this.source_uri
}

output "storage_account_id" {
  value = azurerm_managed_disk.this.storage_account_id
}

output "tier" {
  value = azurerm_managed_disk.this.tier
}

output "max_shares" {
  value = azurerm_managed_disk.this.max_shares
}

output "trusted_launch_enabled" {
  value = azurerm_managed_disk.this.trusted_launch_enabled
}

output "security_type" {
  value = azurerm_managed_disk.this.security_type
}

output "secure_vm_disk_encryption_set_id" {
  value = azurerm_managed_disk.this.secure_vm_disk_encryption_set_id
}

output "on_demand_bursting_enabled" {
  value = azurerm_managed_disk.this.on_demand_bursting_enabled
}

output "tags" {
  value = azurerm_managed_disk.this.tags
}

output "zone" {
  value = azurerm_managed_disk.this.zone
}

output "network_access_policy" {
  value = azurerm_managed_disk.this.network_access_policy
}

output "disk_access_id" {
  value = azurerm_managed_disk.this.disk_access_id
}

output "public_network_access_enabled" {
  value = azurerm_managed_disk.this.public_network_access_enabled
}

output "id" {
  description = "The ID of the Managed Disk."
  value       = azurerm_managed_disk.this.id
}

