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

output "peer_ip" {
  description = "The peer ip address for the Route Server Bgp Connection. Changing this forces a new resource to be created. In addition to the Arguments listed above - the following Attributes are exported:"
  value       = azurerm_route_server_bgp_connection.this.peer_ip
}

output "id" {
  description = "The ID of the Route Server Bgp Connection."
  value       = azurerm_route_server_bgp_connection.this.id
}

