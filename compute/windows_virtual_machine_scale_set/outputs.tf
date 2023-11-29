output "name" {
  value = azurerm_windows_virtual_machine_scale_set.this.name
}

output "location" {
  value = azurerm_windows_virtual_machine_scale_set.this.location
}

output "resource_group_name" {
  value = azurerm_windows_virtual_machine_scale_set.this.resource_group_name
}

output "admin_password" {
  value     = random_string.admin_password.result
  sensitive = true
}

output "admin_username" {
  value = azurerm_windows_virtual_machine_scale_set.this.admin_username
}

output "instances" {
  value = azurerm_windows_virtual_machine_scale_set.this.instances
}

output "sku" {
  value = azurerm_windows_virtual_machine_scale_set.this.sku
}

output "network_interface" {
  value = azurerm_windows_virtual_machine_scale_set.this.network_interface
}

output "os_disk" {
  value = azurerm_windows_virtual_machine_scale_set.this.os_disk
}

output "additional_capabilities" {
  value = azurerm_windows_virtual_machine_scale_set.this.additional_capabilities
}

output "additional_unattend_content" {
  value = azurerm_windows_virtual_machine_scale_set.this.additional_unattend_content
}

output "automatic_os_upgrade_policy" {
  value = azurerm_windows_virtual_machine_scale_set.this.automatic_os_upgrade_policy
}

output "automatic_instance_repair" {
  value = azurerm_windows_virtual_machine_scale_set.this.automatic_instance_repair
}

output "boot_diagnostics" {
  value = azurerm_windows_virtual_machine_scale_set.this.boot_diagnostics
}

output "capacity_reservation_group_id" {
  value = azurerm_windows_virtual_machine_scale_set.this.capacity_reservation_group_id
}

output "computer_name_prefix" {
  value = azurerm_windows_virtual_machine_scale_set.this.computer_name_prefix
}

output "custom_data" {
  value = azurerm_windows_virtual_machine_scale_set.this.custom_data
}

output "data_disk" {
  value = azurerm_windows_virtual_machine_scale_set.this.data_disk
}

output "do_not_run_extensions_on_overprovisioned_machines" {
  value = azurerm_windows_virtual_machine_scale_set.this.do_not_run_extensions_on_overprovisioned_machines
}

output "edge_zone" {
  value = azurerm_windows_virtual_machine_scale_set.this.edge_zone
}

output "enable_automatic_updates" {
  value = azurerm_windows_virtual_machine_scale_set.this.enable_automatic_updates
}

output "encryption_at_host_enabled" {
  value = azurerm_windows_virtual_machine_scale_set.this.encryption_at_host_enabled
}

output "extension" {
  value = azurerm_windows_virtual_machine_scale_set.this.extension
}

output "extension_operations_enabled" {
  value = azurerm_windows_virtual_machine_scale_set.this.extension_operations_enabled
}

output "extensions_time_budget" {
  value = azurerm_windows_virtual_machine_scale_set.this.extensions_time_budget
}

output "eviction_policy" {
  value = azurerm_windows_virtual_machine_scale_set.this.eviction_policy
}

output "gallery_application" {
  value = azurerm_windows_virtual_machine_scale_set.this.gallery_application
}

output "health_probe_id" {
  value = azurerm_windows_virtual_machine_scale_set.this.health_probe_id
}

output "host_group_id" {
  value = azurerm_windows_virtual_machine_scale_set.this.host_group_id
}

output "identity" {
  value = azurerm_windows_virtual_machine_scale_set.this.identity
}

output "license_type" {
  value = azurerm_windows_virtual_machine_scale_set.this.license_type
}

output "max_bid_price" {
  value = azurerm_windows_virtual_machine_scale_set.this.max_bid_price
}

output "overprovision" {
  value = azurerm_windows_virtual_machine_scale_set.this.overprovision
}

output "plan" {
  value = azurerm_windows_virtual_machine_scale_set.this.plan
}

output "platform_fault_domain_count" {
  value = azurerm_windows_virtual_machine_scale_set.this.platform_fault_domain_count
}

output "priority" {
  value = azurerm_windows_virtual_machine_scale_set.this.priority
}

output "provision_vm_agent" {
  value = azurerm_windows_virtual_machine_scale_set.this.provision_vm_agent
}

output "proximity_placement_group_id" {
  value = azurerm_windows_virtual_machine_scale_set.this.proximity_placement_group_id
}

output "rolling_upgrade_policy" {
  value = azurerm_windows_virtual_machine_scale_set.this.rolling_upgrade_policy
}

output "scale_in" {
  value = azurerm_windows_virtual_machine_scale_set.this.scale_in
}

output "secret" {
  value = azurerm_windows_virtual_machine_scale_set.this.secret
}

output "secure_boot_enabled" {
  value = azurerm_windows_virtual_machine_scale_set.this.secure_boot_enabled
}

output "single_placement_group" {
  value = azurerm_windows_virtual_machine_scale_set.this.single_placement_group
}

output "source_image_id" {
  value = azurerm_windows_virtual_machine_scale_set.this.source_image_id
}

output "source_image_reference" {
  value = azurerm_windows_virtual_machine_scale_set.this.source_image_reference
}

output "spot_restore" {
  value = azurerm_windows_virtual_machine_scale_set.this.spot_restore
}

output "tags" {
  value = azurerm_windows_virtual_machine_scale_set.this.tags
}

output "terminate_notification" {
  value = azurerm_windows_virtual_machine_scale_set.this.terminate_notification
}

output "termination_notification" {
  value = azurerm_windows_virtual_machine_scale_set.this.termination_notification
}

output "timezone" {
  value = azurerm_windows_virtual_machine_scale_set.this.timezone
}

output "upgrade_mode" {
  value = azurerm_windows_virtual_machine_scale_set.this.upgrade_mode
}

output "user_data" {
  value = azurerm_windows_virtual_machine_scale_set.this.user_data
}

output "vtpm_enabled" {
  value = azurerm_windows_virtual_machine_scale_set.this.vtpm_enabled
}

output "winrm_listener" {
  value = azurerm_windows_virtual_machine_scale_set.this.winrm_listener
}

output "zone_balance" {
  value = azurerm_windows_virtual_machine_scale_set.this.zone_balance
}

output "zones" {
  value = azurerm_windows_virtual_machine_scale_set.this.zones
}

output "id" {
  description = "The ID of the Windows Virtual Machine Scale Set."
  value       = azurerm_windows_virtual_machine_scale_set.this.id
}

output "identity" {
  description = "A 'identity' block."
  value       = azurerm_windows_virtual_machine_scale_set.this.identity
}

output "unique_id" {
  description = "The Unique ID for this Windows Virtual Machine Scale Set."
  value       = azurerm_windows_virtual_machine_scale_set.this.unique_id
}

output "principal_id" {
  description = "The Principal ID associated with this Managed Service Identity."
  value       = azurerm_windows_virtual_machine_scale_set.this.principal_id
}

output "tenant_id" {
  description = "The Tenant ID associated with this Managed Service Identity."
  value       = azurerm_windows_virtual_machine_scale_set.this.tenant_id
}

