output "name" {
  value = azurerm_network_manager_subscription_connection.this.name
}

output "subscription_id" {
  value = azurerm_network_manager_subscription_connection.this.subscription_id
}

output "network_manager_id" {
  value = azurerm_network_manager_subscription_connection.this.network_manager_id
}

output "description" {
  value = azurerm_network_manager_subscription_connection.this.description
}

output "id" {
  description = "The ID of the Network Manager Subscription Connection."
  value       = azurerm_network_manager_subscription_connection.this.id
}

output "connection_state" {
  description = "The Connection state of the Network Manager Subscription Connection."
  value       = azurerm_network_manager_subscription_connection.this.connection_state
}

