output "name" {
  value = azurerm_express_route_circuit_connection.this.name
}

output "peering_id" {
  value = azurerm_express_route_circuit_connection.this.peering_id
}

output "peer_peering_id" {
  value = azurerm_express_route_circuit_connection.this.peer_peering_id
}

output "address_prefix_ipv4" {
  value = azurerm_express_route_circuit_connection.this.address_prefix_ipv4
}

output "authorization_key" {
  value = azurerm_express_route_circuit_connection.this.authorization_key
}

output "address_prefix_ipv6" {
  value = azurerm_express_route_circuit_connection.this.address_prefix_ipv6
}

output "id" {
  description = "The ID of the Express Route Circuit Connection."
  value       = azurerm_express_route_circuit_connection.this.id
}

