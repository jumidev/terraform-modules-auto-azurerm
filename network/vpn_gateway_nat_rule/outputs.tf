output "name" {
  value = azurerm_vpn_gateway_nat_rule.this.name
}

output "resource_group_name" {
  value = azurerm_vpn_gateway_nat_rule.this.resource_group_name
}

output "vpn_gateway_id" {
  value = azurerm_vpn_gateway_nat_rule.this.vpn_gateway_id
}

output "external_mapping" {
  value = azurerm_vpn_gateway_nat_rule.this.external_mapping
}

output "internal_mapping" {
  value = azurerm_vpn_gateway_nat_rule.this.internal_mapping
}

output "ip_configuration_id" {
  value = azurerm_vpn_gateway_nat_rule.this.ip_configuration_id
}

output "mode" {
  value = azurerm_vpn_gateway_nat_rule.this.mode
}

output "type" {
  value = azurerm_vpn_gateway_nat_rule.this.type
}

output "external_address_space_mappings" {
  value = azurerm_vpn_gateway_nat_rule.this.external_address_space_mappings
}

output "internal_address_space_mappings" {
  value = azurerm_vpn_gateway_nat_rule.this.internal_address_space_mappings
}

output "port_range" {
  description = "The single port range for the VPN Gateway Nat Rule internal mapping. In addition to the Arguments listed above - the following Attributes are exported:"
  value       = azurerm_vpn_gateway_nat_rule.this.port_range
}

output "id" {
  description = "The ID of the VPN Gateway NAT Rule."
  value       = azurerm_vpn_gateway_nat_rule.this.id
}

