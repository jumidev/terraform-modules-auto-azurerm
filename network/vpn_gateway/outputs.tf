output "name" {
  value = azurerm_vpn_gateway.this.name
}

output "resource_group_name" {
  value = azurerm_vpn_gateway.this.resource_group_name
}

output "location" {
  value = azurerm_vpn_gateway.this.location
}

output "virtual_hub_id" {
  value = azurerm_vpn_gateway.this.virtual_hub_id
}

output "bgp_route_translation_for_nat_enabled" {
  value = azurerm_vpn_gateway.this.bgp_route_translation_for_nat_enabled
}

output "bgp_settings" {
  value = azurerm_vpn_gateway.this.bgp_settings
}

output "routing_preference" {
  value = azurerm_vpn_gateway.this.routing_preference
}

output "scale_unit" {
  value = azurerm_vpn_gateway.this.scale_unit
}

output "tags" {
  value = azurerm_vpn_gateway.this.tags
}

output "id" {
  description = "The ID of the VPN Gateway."
  value       = azurerm_vpn_gateway.this.id
}

output "bgp_settings" {
  description = "A 'bgp_settings' block."
  value       = azurerm_vpn_gateway.this.bgp_settings
}

output "bgp_peering_address" {
  description = "The Address which should be used for the BGP Peering."
  value       = azurerm_vpn_gateway.this.bgp_peering_address
}

output "instance_0_bgp_peering_address" {
  description = "an 'instance_bgp_peering_address' block."
  value       = azurerm_vpn_gateway.this.instance_0_bgp_peering_address
}

output "instance_1_bgp_peering_address" {
  description = "an 'instance_bgp_peering_address' block."
  value       = azurerm_vpn_gateway.this.instance_1_bgp_peering_address
}

output "ip_configuration_id" {
  description = "The pre-defined id of VPN Gateway IP Configuration."
  value       = azurerm_vpn_gateway.this.ip_configuration_id
}

output "default_ips" {
  description = "The list of default BGP peering addresses which belong to the pre-defined VPN Gateway IP configuration."
  value       = azurerm_vpn_gateway.this.default_ips
}

output "tunnel_ips" {
  description = "The list of tunnel public IP addresses which belong to the pre-defined VPN Gateway IP configuration."
  value       = azurerm_vpn_gateway.this.tunnel_ips
}

