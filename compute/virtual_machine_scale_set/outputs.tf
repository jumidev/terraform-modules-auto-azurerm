output "name" {
  value = azurerm_virtual_machine_scale_set.this.name
}

output "resource_group_name" {
  value = azurerm_virtual_machine_scale_set.this.resource_group_name
}

output "location" {
  value = azurerm_virtual_machine_scale_set.this.location
}

output "network_profile" {
  value = azurerm_virtual_machine_scale_set.this.network_profile
}

output "os_profile" {
  value = azurerm_virtual_machine_scale_set.this.os_profile
}

output "os_profile_windows_config" {
  value = azurerm_virtual_machine_scale_set.this.os_profile_windows_config
}

output "os_profile_linux_config" {
  value = azurerm_virtual_machine_scale_set.this.os_profile_linux_config
}

output "proximity_placement_group_id" {
  value = azurerm_virtual_machine_scale_set.this.proximity_placement_group_id
}

output "sku" {
  value = azurerm_virtual_machine_scale_set.this.sku
}

output "storage_profile_os_disk" {
  value = azurerm_virtual_machine_scale_set.this.storage_profile_os_disk
}

output "upgrade_policy_mode" {
  value = azurerm_virtual_machine_scale_set.this.upgrade_policy_mode
}

output "identity" {
  value = azurerm_virtual_machine_scale_set.this.identity
}

output "automatic_os_upgrade" {
  value = azurerm_virtual_machine_scale_set.this.automatic_os_upgrade
}

output "boot_diagnostics" {
  value = azurerm_virtual_machine_scale_set.this.boot_diagnostics
}

output "id" {
  description = "The virtual machine scale set ID."
  value       = azurerm_virtual_machine_scale_set.this.id
}

