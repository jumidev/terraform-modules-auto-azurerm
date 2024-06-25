output "name" {
  value = azurerm_subnet.this.name
}

output "resource_group_name" {
  value = azurerm_subnet.this.resource_group_name
}

output "virtual_network_name" {
  value = azurerm_subnet.this.virtual_network_name
}

output "address_prefixes" {
  value = azurerm_subnet.this.address_prefixes
}

output "delegation" {
  value = azurerm_subnet.this.delegation
}

output "default_outbound_access_enabled" {
  value = azurerm_subnet.this.default_outbound_access_enabled
}

output "private_endpoint_network_policies" {
  value = azurerm_subnet.this.private_endpoint_network_policies
}

output "private_link_service_network_policies_enabled" {
  value = azurerm_subnet.this.private_link_service_network_policies_enabled
}

output "service_endpoints" {
  value = azurerm_subnet.this.service_endpoints
}

output "service_endpoint_policy_ids" {
  value = azurerm_subnet.this.service_endpoint_policy_ids
}

output "actions" {
  description = "A list of Actions which should be delegated. This list is specific to the service to delegate to. Possible values are 'Microsoft.Network/networkinterfaces/*', 'Microsoft.Network/publicIPAddresses/join/action', 'Microsoft.Network/publicIPAddresses/read', 'Microsoft.Network/virtualNetworks/read', 'Microsoft.Network/virtualNetworks/subnets/action', 'Microsoft.Network/virtualNetworks/subnets/join/action', 'Microsoft.Network/virtualNetworks/subnets/prepareNetworkPolicies/action', and 'Microsoft.Network/virtualNetworks/subnets/unprepareNetworkPolicies/action'. -> **NOTE:** Azure may add default actions depending on the service delegation name and they can't be changed. In addition to the Arguments listed above - the following Attributes are exported:"
  value       = azurerm_subnet.this.actions
}

output "id" {
  description = "The subnet ID."
  value       = azurerm_subnet.this.id
}

output "nat_gateway_id" {
  value = azurerm_subnet_nat_gateway_association.this.*.nat_gateway_id
}

output "subnet_id" {
  value = azurerm_subnet_nat_gateway_association.this.*.subnet_id
}

output "id" {
  description = "The ID of the Subnet."
  value       = azurerm_subnet_nat_gateway_association.this.*.id
}

output "network_security_group_id" {
  value = azurerm_subnet_network_security_group_association.this.*.network_security_group_id
}

output "subnet_id" {
  value = azurerm_subnet_network_security_group_association.this.*.subnet_id
}

output "id" {
  description = "The ID of the Subnet."
  value       = azurerm_subnet_network_security_group_association.this.*.id
}

output "route_table_id" {
  value = azurerm_subnet_route_table_association.this.*.route_table_id
}

output "subnet_id" {
  value = azurerm_subnet_route_table_association.this.*.subnet_id
}

output "id" {
  description = "The ID of the Subnet."
  value       = azurerm_subnet_route_table_association.this.*.id
}

output "application_load_balancer_subnet_association" {
  value = var.application_load_balancer_subnet_association
}

