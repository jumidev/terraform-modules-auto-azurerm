output "name" {
  value = azurerm_virtual_machine.this.name
}

output "resource_group_name" {
  value = azurerm_virtual_machine.this.resource_group_name
}

output "location" {
  value = azurerm_virtual_machine.this.location
}

output "network_interface_ids" {
  value = azurerm_virtual_machine.this.network_interface_ids
}

output "os_profile_linux_config" {
  value = azurerm_virtual_machine.this.os_profile_linux_config
}

output "os_profile_windows_config" {
  value = azurerm_virtual_machine.this.os_profile_windows_config
}

output "vm_size" {
  value = azurerm_virtual_machine.this.vm_size
}

output "availability_set_id" {
  value = azurerm_virtual_machine.this.availability_set_id
}

output "boot_diagnostics" {
  value = azurerm_virtual_machine.this.boot_diagnostics
}

output "additional_capabilities" {
  value = azurerm_virtual_machine.this.additional_capabilities
}

output "delete_os_disk_on_termination" {
  value = azurerm_virtual_machine.this.delete_os_disk_on_termination
}

output "delete_data_disks_on_termination" {
  value = azurerm_virtual_machine.this.delete_data_disks_on_termination
}

output "identity" {
  value = azurerm_virtual_machine.this.identity
}

output "license_type" {
  value = azurerm_virtual_machine.this.license_type
}

output "os_profile" {
  value = azurerm_virtual_machine.this.os_profile
}

output "os_profile_secrets" {
  value = azurerm_virtual_machine.this.os_profile_secrets
}

output "plan" {
  value = azurerm_virtual_machine.this.plan
}

output "primary_network_interface_id" {
  value = azurerm_virtual_machine.this.primary_network_interface_id
}

output "proximity_placement_group_id" {
  value = azurerm_virtual_machine.this.proximity_placement_group_id
}

output "storage_data_disk" {
  value = azurerm_virtual_machine.this.storage_data_disk
}

output "storage_image_reference" {
  value = azurerm_virtual_machine.this.storage_image_reference
}

output "storage_os_disk" {
  value = azurerm_virtual_machine.this.storage_os_disk
}

output "tags" {
  value = azurerm_virtual_machine.this.tags
}

output "zones" {
  value = azurerm_virtual_machine.this.zones
}

output "id" {
  description = "The ID of the Virtual Machine."
  value       = azurerm_virtual_machine.this.id
}

output "identity" {
  description = "An 'identity' block."
  value       = azurerm_virtual_machine.this.identity
}

output "principal_id" {
  description = "The Principal ID associated with this Managed Service Identity."
  value       = azurerm_virtual_machine.this.principal_id
}

