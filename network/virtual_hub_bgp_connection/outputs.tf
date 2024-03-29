output "name" {
  value = azurerm_virtual_hub_bgp_connection.this.name
}

output "virtual_hub_id" {
  value = azurerm_virtual_hub_bgp_connection.this.virtual_hub_id
}

output "peer_asn" {
  value = azurerm_virtual_hub_bgp_connection.this.peer_asn
}

output "peer_ip" {
  value = azurerm_virtual_hub_bgp_connection.this.peer_ip
}

output "virtual_network_connection_id" {
  value = azurerm_virtual_hub_bgp_connection.this.virtual_network_connection_id
}

output "virtual_network_connection_id" {
  description = "The ID of virtual network connection. In addition to the Arguments listed above - the following Attributes are exported:"
  value       = azurerm_virtual_hub_bgp_connection.this.virtual_network_connection_id
}

output "id" {
  description = "The ID of the Virtual Hub Bgp Connection."
  value       = azurerm_virtual_hub_bgp_connection.this.id
}

