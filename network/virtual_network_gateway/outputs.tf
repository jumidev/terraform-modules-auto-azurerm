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

output "address_prefixes" {
  description = "A list of address prefixes for P2S VPN Client. In addition to the Arguments listed above - the following Attributes are exported:"
  value       = azurerm_virtual_network_gateway.this.address_prefixes
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

