output "name" {
  value = azurerm_site_recovery_network_mapping.this.name
}

output "resource_group_name" {
  value = azurerm_site_recovery_network_mapping.this.resource_group_name
}

output "recovery_vault_name" {
  value = azurerm_site_recovery_network_mapping.this.recovery_vault_name
}

output "source_recovery_fabric_name" {
  value = azurerm_site_recovery_network_mapping.this.source_recovery_fabric_name
}

output "target_recovery_fabric_name" {
  value = azurerm_site_recovery_network_mapping.this.target_recovery_fabric_name
}

output "source_network_id" {
  value = azurerm_site_recovery_network_mapping.this.source_network_id
}

output "target_network_id" {
  value = azurerm_site_recovery_network_mapping.this.target_network_id
}

output "id" {
  description = "The ID of the Site Recovery Network Mapping."
  value       = azurerm_site_recovery_network_mapping.this.id
}

