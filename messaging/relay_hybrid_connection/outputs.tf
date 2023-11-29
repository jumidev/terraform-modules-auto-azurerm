output "name" {
  value = azurerm_relay_hybrid_connection.this.name
}

output "resource_group_name" {
  value = azurerm_relay_hybrid_connection.this.resource_group_name
}

output "relay_namespace_name" {
  value = azurerm_relay_hybrid_connection.this.relay_namespace_name
}

output "requires_client_authorization" {
  value = azurerm_relay_hybrid_connection.this.requires_client_authorization
}

output "user_metadata" {
  value = azurerm_relay_hybrid_connection.this.user_metadata
}

output "id" {
  description = "The ID of the Relay Hybrid Connection."
  value       = azurerm_relay_hybrid_connection.this.id
}

