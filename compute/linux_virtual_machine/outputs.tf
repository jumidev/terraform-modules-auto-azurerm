output "admin_username" {
  value = azurerm_linux_virtual_machine.this.admin_username
}

output "location" {
  value = azurerm_linux_virtual_machine.this.location
}

output "license_type" {
  value = azurerm_linux_virtual_machine.this.license_type
}

output "name" {
  value = azurerm_linux_virtual_machine.this.name
}

output "network_interface_ids" {
  value = azurerm_linux_virtual_machine.this.network_interface_ids
}

output "os_disk" {
  value = azurerm_linux_virtual_machine.this.os_disk
}

output "resource_group_name" {
  value = azurerm_linux_virtual_machine.this.resource_group_name
}

output "size" {
  value = azurerm_linux_virtual_machine.this.size
}

output "additional_capabilities" {
  value = azurerm_linux_virtual_machine.this.additional_capabilities
}

output "admin_password" {
  value     = random_string.admin_password.result
  sensitive = true
}

output "admin_ssh_key" {
  value = azurerm_linux_virtual_machine.this.admin_ssh_key
}

output "allow_extension_operations" {
  value = azurerm_linux_virtual_machine.this.allow_extension_operations
}

output "availability_set_id" {
  value = azurerm_linux_virtual_machine.this.availability_set_id
}

output "boot_diagnostics" {
  value = azurerm_linux_virtual_machine.this.boot_diagnostics
}

output "bypass_platform_safety_checks_on_user_schedule_enabled" {
  value = azurerm_linux_virtual_machine.this.bypass_platform_safety_checks_on_user_schedule_enabled
}

output "capacity_reservation_group_id" {
  value = azurerm_linux_virtual_machine.this.capacity_reservation_group_id
}

output "computer_name" {
  value = azurerm_linux_virtual_machine.this.computer_name
}

output "custom_data" {
  value = azurerm_linux_virtual_machine.this.custom_data
}

output "dedicated_host_id" {
  value = azurerm_linux_virtual_machine.this.dedicated_host_id
}

output "dedicated_host_group_id" {
  value = azurerm_linux_virtual_machine.this.dedicated_host_group_id
}

output "disable_password_authentication" {
  value = azurerm_linux_virtual_machine.this.disable_password_authentication
}

output "edge_zone" {
  value = azurerm_linux_virtual_machine.this.edge_zone
}

output "encryption_at_host_enabled" {
  value = azurerm_linux_virtual_machine.this.encryption_at_host_enabled
}

output "eviction_policy" {
  value = azurerm_linux_virtual_machine.this.eviction_policy
}

output "extensions_time_budget" {
  value = azurerm_linux_virtual_machine.this.extensions_time_budget
}

output "gallery_application" {
  value = azurerm_linux_virtual_machine.this.gallery_application
}

output "identity" {
  value = azurerm_linux_virtual_machine.this.identity
}

output "patch_assessment_mode" {
  value = azurerm_linux_virtual_machine.this.patch_assessment_mode
}

output "patch_mode" {
  value = azurerm_linux_virtual_machine.this.patch_mode
}

output "max_bid_price" {
  value = azurerm_linux_virtual_machine.this.max_bid_price
}

output "plan" {
  value = azurerm_linux_virtual_machine.this.plan
}

output "platform_fault_domain" {
  value = azurerm_linux_virtual_machine.this.platform_fault_domain
}

output "priority" {
  value = azurerm_linux_virtual_machine.this.priority
}

output "provision_vm_agent" {
  value = azurerm_linux_virtual_machine.this.provision_vm_agent
}

output "proximity_placement_group_id" {
  value = azurerm_linux_virtual_machine.this.proximity_placement_group_id
}

output "reboot_setting" {
  value = azurerm_linux_virtual_machine.this.reboot_setting
}

output "secret" {
  value = azurerm_linux_virtual_machine.this.secret
}

output "secure_boot_enabled" {
  value = azurerm_linux_virtual_machine.this.secure_boot_enabled
}

output "source_image_id" {
  value = azurerm_linux_virtual_machine.this.source_image_id
}

output "source_image_reference" {
  value = azurerm_linux_virtual_machine.this.source_image_reference
}

output "tags" {
  value = azurerm_linux_virtual_machine.this.tags
}

output "termination_notification" {
  value = azurerm_linux_virtual_machine.this.termination_notification
}

output "user_data" {
  value = azurerm_linux_virtual_machine.this.user_data
}

output "vtpm_enabled" {
  value = azurerm_linux_virtual_machine.this.vtpm_enabled
}

output "virtual_machine_scale_set_id" {
  value = azurerm_linux_virtual_machine.this.virtual_machine_scale_set_id
}

output "zone" {
  value = azurerm_linux_virtual_machine.this.zone
}

output "id" {
  description = "The ID of the Linux Virtual Machine."
  value       = azurerm_linux_virtual_machine.this.id
}

output "identity" {
  description = "An 'identity' block."
  value       = azurerm_linux_virtual_machine.this.identity
}

output "private_ip_address" {
  description = "The Primary Private IP Address assigned to this Virtual Machine."
  value       = azurerm_linux_virtual_machine.this.private_ip_address
}

output "private_ip_addresses" {
  description = "A list of Private IP Addresses assigned to this Virtual Machine."
  value       = azurerm_linux_virtual_machine.this.private_ip_addresses
}

output "public_ip_address" {
  description = "The Primary Public IP Address assigned to this Virtual Machine."
  value       = azurerm_linux_virtual_machine.this.public_ip_address
}

output "public_ip_addresses" {
  description = "A list of the Public IP Addresses assigned to this Virtual Machine."
  value       = azurerm_linux_virtual_machine.this.public_ip_addresses
}

output "virtual_machine_id" {
  description = "A 128-bit identifier which uniquely identifies this Virtual Machine."
  value       = azurerm_linux_virtual_machine.this.virtual_machine_id
}

output "principal_id" {
  description = "The Principal ID associated with this Managed Service Identity."
  value       = azurerm_linux_virtual_machine.this.principal_id
}

output "tenant_id" {
  description = "The Tenant ID associated with this Managed Service Identity."
  value       = azurerm_linux_virtual_machine.this.tenant_id
}

