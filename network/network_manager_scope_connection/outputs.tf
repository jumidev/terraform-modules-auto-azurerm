output "name" {
  value = azurerm_network_manager_scope_connection.this.name
}

output "network_manager_id" {
  value = azurerm_network_manager_scope_connection.this.network_manager_id
}

output "target_scope_id" {
  value = azurerm_network_manager_scope_connection.this.target_scope_id
}

output "tenant_id" {
  value = azurerm_network_manager_scope_connection.this.tenant_id
}

output "description" {
  value = azurerm_network_manager_scope_connection.this.description
}

output "id" {
  description = "The ID of the Network Manager Scope Connection."
  value       = azurerm_network_manager_scope_connection.this.id
}

output "connection_state" {
  description = "The Connection state of the Network Manager Scope Connection."
  value       = azurerm_network_manager_scope_connection.this.connection_state
}

