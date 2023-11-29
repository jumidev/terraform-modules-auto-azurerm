output "ip_configuration" {
  value = azurerm_virtual_network_gateway.this.ip_configuration
}

output "location" {
  value = azurerm_virtual_network_gateway.this.location
}

output "name" {
  value = azurerm_virtual_network_gateway.this.name
}

output "resource_group_name" {
  value = azurerm_virtual_network_gateway.this.resource_group_name
}

output "sku" {
  value = azurerm_virtual_network_gateway.this.sku
}

output "type" {
  value = azurerm_virtual_network_gateway.this.type
}

output "active_active" {
  value = azurerm_virtual_network_gateway.this.active_active
}

output "default_local_network_gateway_id" {
  value = azurerm_virtual_network_gateway.this.default_local_network_gateway_id
}

output "edge_zone" {
  value = azurerm_virtual_network_gateway.this.edge_zone
}

output "enable_bgp" {
  value = azurerm_virtual_network_gateway.this.enable_bgp
}

output "bgp_settings" {
  value = azurerm_virtual_network_gateway.this.bgp_settings
}

output "custom_route" {
  value = azurerm_virtual_network_gateway.this.custom_route
}

output "generation" {
  value = azurerm_virtual_network_gateway.this.generation
}

output "private_ip_address_enabled" {
  value = azurerm_virtual_network_gateway.this.private_ip_address_enabled
}

output "tags" {
  value = azurerm_virtual_network_gateway.this.tags
}

output "vpn_client_configuration" {
  value = azurerm_virtual_network_gateway.this.vpn_client_configuration
}

output "vpn_type" {
  value = azurerm_virtual_network_gateway.this.vpn_type
}

output "id" {
  description = "The ID of the Virtual Network Gateway."
  value       = azurerm_virtual_network_gateway.this.id
}

output "bgp_settings" {
  description = "A block of 'bgp_settings'."
  value       = azurerm_virtual_network_gateway.this.bgp_settings
}

output "peering_addresses" {
  description = "A list of 'peering_addresses' as defined below."
  value       = azurerm_virtual_network_gateway.this.peering_addresses
}

output "default_addresses" {
  description = "A list of peering address assigned to the BGP peer of the Virtual Network Gateway."
  value       = azurerm_virtual_network_gateway.this.default_addresses
}

output "tunnel_ip_addresses" {
  description = "A list of tunnel IP addresses assigned to the BGP peer of the Virtual Network Gateway."
  value       = azurerm_virtual_network_gateway.this.tunnel_ip_addresses
}

