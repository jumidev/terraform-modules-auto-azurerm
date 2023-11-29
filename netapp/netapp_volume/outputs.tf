output "name" {
  value = azurerm_netapp_volume.this.name
}

output "resource_group_name" {
  value = azurerm_netapp_volume.this.resource_group_name
}

output "location" {
  value = azurerm_netapp_volume.this.location
}

output "zone" {
  value = azurerm_netapp_volume.this.zone
}

output "account_name" {
  value = azurerm_netapp_volume.this.account_name
}

output "volume_path" {
  value = azurerm_netapp_volume.this.volume_path
}

output "pool_name" {
  value = azurerm_netapp_volume.this.pool_name
}

output "service_level" {
  value = azurerm_netapp_volume.this.service_level
}

output "azure_vmware_data_store_enabled" {
  value = azurerm_netapp_volume.this.azure_vmware_data_store_enabled
}

output "protocols" {
  value = azurerm_netapp_volume.this.protocols
}

output "security_style" {
  value = azurerm_netapp_volume.this.security_style
}

output "subnet_id" {
  value = azurerm_netapp_volume.this.subnet_id
}

output "network_features" {
  value = azurerm_netapp_volume.this.network_features
}

output "storage_quota_in_gb" {
  value = azurerm_netapp_volume.this.storage_quota_in_gb
}

output "snapshot_directory_visible" {
  value = azurerm_netapp_volume.this.snapshot_directory_visible
}

output "create_from_snapshot_resource_id" {
  value = azurerm_netapp_volume.this.create_from_snapshot_resource_id
}

output "data_protection_replication" {
  value = azurerm_netapp_volume.this.data_protection_replication
}

output "data_protection_snapshot_policy" {
  value = azurerm_netapp_volume.this.data_protection_snapshot_policy
}

output "export_policy_rule" {
  value = azurerm_netapp_volume.this.export_policy_rule
}

output "throughput_in_mibps" {
  value = azurerm_netapp_volume.this.throughput_in_mibps
}

output "tags" {
  value = azurerm_netapp_volume.this.tags
}

output "id" {
  description = "The ID of the NetApp Volume."
  value       = azurerm_netapp_volume.this.id
}

output "mount_ip_addresses" {
  description = "A list of IPv4 Addresses which should be used to mount the volume."
  value       = azurerm_netapp_volume.this.mount_ip_addresses
}

