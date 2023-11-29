output "name" {
  value = azurerm_site_recovery_replicated_vm.this.name
}

output "resource_group_name" {
  value = azurerm_site_recovery_replicated_vm.this.resource_group_name
}

output "recovery_vault_name" {
  value = azurerm_site_recovery_replicated_vm.this.recovery_vault_name
}

output "recovery_replication_policy_id" {
  value = azurerm_site_recovery_replicated_vm.this.recovery_replication_policy_id
}

output "source_recovery_fabric_name" {
  value = azurerm_site_recovery_replicated_vm.this.source_recovery_fabric_name
}

output "source_vm_id" {
  value = azurerm_site_recovery_replicated_vm.this.source_vm_id
}

output "source_recovery_protection_container_name" {
  value = azurerm_site_recovery_replicated_vm.this.source_recovery_protection_container_name
}

output "target_resource_group_id" {
  value = azurerm_site_recovery_replicated_vm.this.target_resource_group_id
}

output "target_recovery_fabric_id" {
  value = azurerm_site_recovery_replicated_vm.this.target_recovery_fabric_id
}

output "target_recovery_protection_container_id" {
  value = azurerm_site_recovery_replicated_vm.this.target_recovery_protection_container_id
}

output "target_availability_set_id" {
  value = azurerm_site_recovery_replicated_vm.this.target_availability_set_id
}

output "target_zone" {
  value = azurerm_site_recovery_replicated_vm.this.target_zone
}

output "managed_disk" {
  value = azurerm_site_recovery_replicated_vm.this.managed_disk
}

output "unmanaged_disk" {
  value = azurerm_site_recovery_replicated_vm.this.unmanaged_disk
}

output "target_edge_zone" {
  value = azurerm_site_recovery_replicated_vm.this.target_edge_zone
}

output "target_proximity_placement_group_id" {
  value = azurerm_site_recovery_replicated_vm.this.target_proximity_placement_group_id
}

output "target_boot_diagnostic_storage_account_id" {
  value = azurerm_site_recovery_replicated_vm.this.target_boot_diagnostic_storage_account_id
}

output "target_capacity_reservation_group_id" {
  value = azurerm_site_recovery_replicated_vm.this.target_capacity_reservation_group_id
}

output "target_virtual_machine_scale_set_id" {
  value = azurerm_site_recovery_replicated_vm.this.target_virtual_machine_scale_set_id
}

output "target_network_id" {
  value = azurerm_site_recovery_replicated_vm.this.target_network_id
}

output "test_network_id" {
  value = azurerm_site_recovery_replicated_vm.this.test_network_id
}

output "network_interface" {
  value = azurerm_site_recovery_replicated_vm.this.network_interface
}

output "multi_vm_group_name" {
  value = azurerm_site_recovery_replicated_vm.this.multi_vm_group_name
}

output "id" {
  description = "The ID of the Site Recovery Replicated VM."
  value       = azurerm_site_recovery_replicated_vm.this.id
}

