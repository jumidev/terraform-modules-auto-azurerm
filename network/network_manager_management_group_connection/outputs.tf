output "name" {
  value = azurerm_network_manager_management_group_connection.this.name
}

output "management_group_id" {
  value = azurerm_network_manager_management_group_connection.this.management_group_id
}

output "network_manager_id" {
  value = azurerm_network_manager_management_group_connection.this.network_manager_id
}

output "description" {
  value = azurerm_network_manager_management_group_connection.this.description
}

output "id" {
  description = "The ID of the Network Manager Management Group Connection."
  value       = azurerm_network_manager_management_group_connection.this.id
}

output "connection_state" {
  description = "The Connection state of the Network Manager Management Group Connection."
  value       = azurerm_network_manager_management_group_connection.this.connection_state
}

