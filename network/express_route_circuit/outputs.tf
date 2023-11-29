output "name" {
  value = azurerm_express_route_circuit.this.name
}

output "resource_group_name" {
  value = azurerm_express_route_circuit.this.resource_group_name
}

output "location" {
  value = azurerm_express_route_circuit.this.location
}

output "sku" {
  value = azurerm_express_route_circuit.this.sku
}

output "service_provider_name" {
  value = azurerm_express_route_circuit.this.service_provider_name
}

output "peering_location" {
  value = azurerm_express_route_circuit.this.peering_location
}

output "bandwidth_in_mbps" {
  value = azurerm_express_route_circuit.this.bandwidth_in_mbps
}

output "allow_classic_operations" {
  value = azurerm_express_route_circuit.this.allow_classic_operations
}

output "express_route_port_id" {
  value = azurerm_express_route_circuit.this.express_route_port_id
}

output "bandwidth_in_gbps" {
  value = azurerm_express_route_circuit.this.bandwidth_in_gbps
}

output "authorization_key" {
  value = azurerm_express_route_circuit.this.authorization_key
}

output "tags" {
  value = azurerm_express_route_circuit.this.tags
}

output "id" {
  description = "The ID of the ExpressRoute circuit."
  value       = azurerm_express_route_circuit.this.id
}

output "service_provider_provisioning_state" {
  description = "The ExpressRoute circuit provisioning state from your chosen service provider. Possible values are 'NotProvisioned', 'Provisioning', 'Provisioned', and 'Deprovisioning'."
  value       = azurerm_express_route_circuit.this.service_provider_provisioning_state
}

output "service_key" {
  description = "The string needed by the service provider to provision the ExpressRoute circuit."
  value       = azurerm_express_route_circuit.this.service_key
}

