output "name" {
  value = azurerm_route_server_bgp_connection.this.name
}

output "route_server_id" {
  value = azurerm_route_server_bgp_connection.this.route_server_id
}

output "peer_asn" {
  value = azurerm_route_server_bgp_connection.this.peer_asn
}

output "peer_ip" {
  value = azurerm_route_server_bgp_connection.this.peer_ip
}

output "id" {
  description = "The ID of the Route Server Bgp Connection."
  value       = azurerm_route_server_bgp_connection.this.id
}

