output "name" {
  value = azurerm_network_profile.this.name
}

output "location" {
  value = azurerm_network_profile.this.location
}

output "resource_group_name" {
  value = azurerm_network_profile.this.resource_group_name
}

output "container_network_interface" {
  value = azurerm_network_profile.this.container_network_interface
}

output "tags" {
  value = azurerm_network_profile.this.tags
}

output "id" {
  description = "The ID of the Network Profile."
  value       = azurerm_network_profile.this.id
}

output "container_network_interface_ids" {
  description = "A list of Container Network Interface IDs."
  value       = azurerm_network_profile.this.container_network_interface_ids
}

