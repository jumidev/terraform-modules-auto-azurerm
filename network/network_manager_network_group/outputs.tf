output "name" {
  value = azurerm_network_manager_network_group.this.name
}

output "network_manager_id" {
  value = azurerm_network_manager_network_group.this.network_manager_id
}

output "description" {
  value = azurerm_network_manager_network_group.this.description
}

output "id" {
  description = "The ID of the Network Manager Network Group."
  value       = azurerm_network_manager_network_group.this.id
}

