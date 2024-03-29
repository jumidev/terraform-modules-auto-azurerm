output "peering_type" {
  value = azurerm_express_route_circuit_peering.this.peering_type
}

output "express_route_circuit_name" {
  value = azurerm_express_route_circuit_peering.this.express_route_circuit_name
}

output "resource_group_name" {
  value = azurerm_express_route_circuit_peering.this.resource_group_name
}

output "vlan_id" {
  value = azurerm_express_route_circuit_peering.this.vlan_id
}

output "primary_peer_address_prefix" {
  value = azurerm_express_route_circuit_peering.this.primary_peer_address_prefix
}

output "secondary_peer_address_prefix" {
  value = azurerm_express_route_circuit_peering.this.secondary_peer_address_prefix
}

output "ipv4_enabled" {
  value = azurerm_express_route_circuit_peering.this.ipv4_enabled
}

output "shared_key" {
  value = azurerm_express_route_circuit_peering.this.shared_key
}

output "peer_asn" {
  value = azurerm_express_route_circuit_peering.this.peer_asn
}

output "microsoft_peering_config" {
  value = azurerm_express_route_circuit_peering.this.microsoft_peering_config
}

output "ipv6" {
  value = azurerm_express_route_circuit_peering.this.ipv6
}

output "route_filter_id" {
  value = azurerm_express_route_circuit_peering.this.route_filter_id
}

output "advertised_communities" {
  description = "The communities of Bgp Peering specified for microsoft peering. In addition to the Arguments listed above - the following Attributes are exported:"
  value       = azurerm_express_route_circuit_peering.this.advertised_communities
}

output "id" {
  description = "The ID of the ExpressRoute Circuit Peering."
  value       = azurerm_express_route_circuit_peering.this.id
}

output "azure_asn" {
  description = "The ASN used by Azure."
  value       = azurerm_express_route_circuit_peering.this.azure_asn
}

output "primary_azure_port" {
  description = "The Primary Port used by Azure for this Peering."
  value       = azurerm_express_route_circuit_peering.this.primary_azure_port
}

output "secondary_azure_port" {
  description = "The Secondary Port used by Azure for this Peering."
  value       = azurerm_express_route_circuit_peering.this.secondary_azure_port
}

