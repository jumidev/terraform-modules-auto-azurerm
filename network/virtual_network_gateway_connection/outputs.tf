output "name" {
  value = azurerm_virtual_network_gateway_connection.this.name
}

output "resource_group_name" {
  value = azurerm_virtual_network_gateway_connection.this.resource_group_name
}

output "location" {
  value = azurerm_virtual_network_gateway_connection.this.location
}

output "type" {
  value = azurerm_virtual_network_gateway_connection.this.type
}

output "virtual_network_gateway_id" {
  value = azurerm_virtual_network_gateway_connection.this.virtual_network_gateway_id
}

output "authorization_key" {
  value = azurerm_virtual_network_gateway_connection.this.authorization_key
}

output "dpd_timeout_seconds" {
  value = azurerm_virtual_network_gateway_connection.this.dpd_timeout_seconds
}

output "express_route_circuit_id" {
  value = azurerm_virtual_network_gateway_connection.this.express_route_circuit_id
}

output "peer_virtual_network_gateway_id" {
  value = azurerm_virtual_network_gateway_connection.this.peer_virtual_network_gateway_id
}

output "local_azure_ip_address_enabled" {
  value = azurerm_virtual_network_gateway_connection.this.local_azure_ip_address_enabled
}

output "local_network_gateway_id" {
  value = azurerm_virtual_network_gateway_connection.this.local_network_gateway_id
}

output "routing_weight" {
  value = azurerm_virtual_network_gateway_connection.this.routing_weight
}

output "shared_key" {
  value = azurerm_virtual_network_gateway_connection.this.shared_key
}

output "connection_mode" {
  value = azurerm_virtual_network_gateway_connection.this.connection_mode
}

output "connection_protocol" {
  value = azurerm_virtual_network_gateway_connection.this.connection_protocol
}

output "enable_bgp" {
  value = azurerm_virtual_network_gateway_connection.this.enable_bgp
}

output "custom_bgp_addresses" {
  value = azurerm_virtual_network_gateway_connection.this.custom_bgp_addresses
}

output "express_route_gateway_bypass" {
  value = azurerm_virtual_network_gateway_connection.this.express_route_gateway_bypass
}

output "egress_nat_rule_ids" {
  value = azurerm_virtual_network_gateway_connection.this.egress_nat_rule_ids
}

output "ingress_nat_rule_ids" {
  value = azurerm_virtual_network_gateway_connection.this.ingress_nat_rule_ids
}

output "use_policy_based_traffic_selectors" {
  value = azurerm_virtual_network_gateway_connection.this.use_policy_based_traffic_selectors
}

output "ipsec_policy" {
  value = azurerm_virtual_network_gateway_connection.this.ipsec_policy
}

output "traffic_selector_policy" {
  value = azurerm_virtual_network_gateway_connection.this.traffic_selector_policy
}

output "tags" {
  value = azurerm_virtual_network_gateway_connection.this.tags
}

output "remote_address_cidrs" {
  description = "List of remote CIDRs. In addition to the Arguments listed above - the following Attributes are exported:"
  value       = azurerm_virtual_network_gateway_connection.this.remote_address_cidrs
}

output "id" {
  description = "The ID of the Virtual Network Gateway Connection."
  value       = azurerm_virtual_network_gateway_connection.this.id
}

