output "name" {
  value = azurerm_orchestrated_virtual_machine_scale_set.this.name
}

output "location" {
  value = azurerm_orchestrated_virtual_machine_scale_set.this.location
}

output "resource_group_name" {
  value = azurerm_orchestrated_virtual_machine_scale_set.this.resource_group_name
}

output "platform_fault_domain_count" {
  value = azurerm_orchestrated_virtual_machine_scale_set.this.platform_fault_domain_count
}

output "sku_name" {
  value = azurerm_orchestrated_virtual_machine_scale_set.this.sku_name
}

output "additional_capabilities" {
  value = azurerm_orchestrated_virtual_machine_scale_set.this.additional_capabilities
}

output "encryption_at_host_enabled" {
  value = azurerm_orchestrated_virtual_machine_scale_set.this.encryption_at_host_enabled
}

output "instances" {
  value = azurerm_orchestrated_virtual_machine_scale_set.this.instances
}

output "network_interface" {
  value = azurerm_orchestrated_virtual_machine_scale_set.this.network_interface
}

output "os_profile" {
  value = azurerm_orchestrated_virtual_machine_scale_set.this.os_profile
}

output "os_disk" {
  value = azurerm_orchestrated_virtual_machine_scale_set.this.os_disk
}

output "automatic_instance_repair" {
  value = azurerm_orchestrated_virtual_machine_scale_set.this.automatic_instance_repair
}

output "boot_diagnostics" {
  value = azurerm_orchestrated_virtual_machine_scale_set.this.boot_diagnostics
}

output "capacity_reservation_group_id" {
  value = azurerm_orchestrated_virtual_machine_scale_set.this.capacity_reservation_group_id
}

output "data_disk" {
  value = azurerm_orchestrated_virtual_machine_scale_set.this.data_disk
}

output "extension" {
  value = azurerm_orchestrated_virtual_machine_scale_set.this.extension
}

output "extension_operations_enabled" {
  value = azurerm_orchestrated_virtual_machine_scale_set.this.extension_operations_enabled
}

output "extensions_time_budget" {
  value = azurerm_orchestrated_virtual_machine_scale_set.this.extensions_time_budget
}

output "eviction_policy" {
  value = azurerm_orchestrated_virtual_machine_scale_set.this.eviction_policy
}

output "identity" {
  value = azurerm_orchestrated_virtual_machine_scale_set.this.identity
}

output "license_type" {
  value = azurerm_orchestrated_virtual_machine_scale_set.this.license_type
}

output "max_bid_price" {
  value = azurerm_orchestrated_virtual_machine_scale_set.this.max_bid_price
}

output "plan" {
  value = azurerm_orchestrated_virtual_machine_scale_set.this.plan
}

output "priority" {
  value = azurerm_orchestrated_virtual_machine_scale_set.this.priority
}

output "single_placement_group" {
  value = azurerm_orchestrated_virtual_machine_scale_set.this.single_placement_group
}

output "source_image_id" {
  value = azurerm_orchestrated_virtual_machine_scale_set.this.source_image_id
}

output "source_image_reference" {
  value = azurerm_orchestrated_virtual_machine_scale_set.this.source_image_reference
}

output "termination_notification" {
  value = azurerm_orchestrated_virtual_machine_scale_set.this.termination_notification
}

output "user_data_base64" {
  value = azurerm_orchestrated_virtual_machine_scale_set.this.user_data_base64
}

output "proximity_placement_group_id" {
  value = azurerm_orchestrated_virtual_machine_scale_set.this.proximity_placement_group_id
}

output "zone_balance" {
  value = azurerm_orchestrated_virtual_machine_scale_set.this.zone_balance
}

output "zones" {
  value = azurerm_orchestrated_virtual_machine_scale_set.this.zones
}

output "tags" {
  value = azurerm_orchestrated_virtual_machine_scale_set.this.tags
}

output "priority_mix" {
  value = azurerm_orchestrated_virtual_machine_scale_set.this.priority_mix
}

output "id" {
  description = "The ID of the Orchestrated Virtual Machine Scale Set."
  value       = azurerm_orchestrated_virtual_machine_scale_set.this.id
}

output "unique_id" {
  description = "The Unique ID for the Orchestrated Virtual Machine Scale Set."
  value       = azurerm_orchestrated_virtual_machine_scale_set.this.unique_id
}

