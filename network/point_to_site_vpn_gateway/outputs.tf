output "name" {
  value = azurerm_point_to_site_vpn_gateway.this.name
}

output "resource_group_name" {
  value = azurerm_point_to_site_vpn_gateway.this.resource_group_name
}

output "location" {
  value = azurerm_point_to_site_vpn_gateway.this.location
}

output "connection_configuration" {
  value = azurerm_point_to_site_vpn_gateway.this.connection_configuration
}

output "scale_unit" {
  value = azurerm_point_to_site_vpn_gateway.this.scale_unit
}

output "virtual_hub_id" {
  value = azurerm_point_to_site_vpn_gateway.this.virtual_hub_id
}

output "vpn_server_configuration_id" {
  value = azurerm_point_to_site_vpn_gateway.this.vpn_server_configuration_id
}

output "dns_servers" {
  value = azurerm_point_to_site_vpn_gateway.this.dns_servers
}

output "routing_preference_internet_enabled" {
  value = azurerm_point_to_site_vpn_gateway.this.routing_preference_internet_enabled
}

output "tags" {
  value = azurerm_point_to_site_vpn_gateway.this.tags
}

output "id" {
  description = "The ID of the Point-to-Site VPN Gateway."
  value       = azurerm_point_to_site_vpn_gateway.this.id
}

