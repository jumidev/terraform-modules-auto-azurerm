output "name" {
  value = azurerm_network_manager_connectivity_configuration.this.name
}

output "network_manager_id" {
  value = azurerm_network_manager_connectivity_configuration.this.network_manager_id
}

output "applies_to_group" {
  value = azurerm_network_manager_connectivity_configuration.this.applies_to_group
}

output "connectivity_topology" {
  value = azurerm_network_manager_connectivity_configuration.this.connectivity_topology
}

output "delete_existing_peering_enabled" {
  value = azurerm_network_manager_connectivity_configuration.this.delete_existing_peering_enabled
}

output "description" {
  value = azurerm_network_manager_connectivity_configuration.this.description
}

output "global_mesh_enabled" {
  value = azurerm_network_manager_connectivity_configuration.this.global_mesh_enabled
}

output "hub" {
  value = azurerm_network_manager_connectivity_configuration.this.hub
}

output "id" {
  description = "The ID of the Network Manager Connectivity Configuration."
  value       = azurerm_network_manager_connectivity_configuration.this.id
}

