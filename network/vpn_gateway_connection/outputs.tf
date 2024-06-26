output "name" {
  value = azurerm_vpn_gateway_connection.this.name
}

output "remote_vpn_site_id" {
  value = azurerm_vpn_gateway_connection.this.remote_vpn_site_id
}

output "vpn_gateway_id" {
  value = azurerm_vpn_gateway_connection.this.vpn_gateway_id
}

output "vpn_link" {
  value = azurerm_vpn_gateway_connection.this.vpn_link
}

output "internet_security_enabled" {
  value = azurerm_vpn_gateway_connection.this.internet_security_enabled
}

output "routing" {
  value = azurerm_vpn_gateway_connection.this.routing
}

output "traffic_selector_policy" {
  value = azurerm_vpn_gateway_connection.this.traffic_selector_policy
}

output "ip_configuration_id" {
  description = "The ID of the IP Configuration which belongs to the VPN Gateway. In addition to the Arguments listed above - the following Attributes are exported:"
  value       = azurerm_vpn_gateway_connection.this.ip_configuration_id
}

output "id" {
  description = "The ID of the VPN Gateway Connection."
  value       = azurerm_vpn_gateway_connection.this.id
}

