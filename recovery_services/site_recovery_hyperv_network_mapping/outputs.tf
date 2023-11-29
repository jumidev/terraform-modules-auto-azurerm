output "name" {
  value = azurerm_site_recovery_hyperv_network_mapping.this.name
}

output "recovery_vault_id" {
  value = azurerm_site_recovery_hyperv_network_mapping.this.recovery_vault_id
}

output "source_system_center_virtual_machine_manager_name" {
  value = azurerm_site_recovery_hyperv_network_mapping.this.source_system_center_virtual_machine_manager_name
}

output "source_network_name" {
  value = azurerm_site_recovery_hyperv_network_mapping.this.source_network_name
}

output "target_network_id" {
  value = azurerm_site_recovery_hyperv_network_mapping.this.target_network_id
}

output "id" {
  description = "The ID of the Site Recovery HyperV Network Mapping."
  value       = azurerm_site_recovery_hyperv_network_mapping.this.id
}

