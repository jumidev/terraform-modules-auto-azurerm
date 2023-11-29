output "name" {
  value = azurerm_express_route_circuit_authorization.this.name
}

output "resource_group_name" {
  value = azurerm_express_route_circuit_authorization.this.resource_group_name
}

output "express_route_circuit_name" {
  value = azurerm_express_route_circuit_authorization.this.express_route_circuit_name
}

output "id" {
  description = "The ID of the ExpressRoute Circuit Authorization."
  value       = azurerm_express_route_circuit_authorization.this.id
}

output "authorization_key" {
  description = "The Authorization Key."
  value       = azurerm_express_route_circuit_authorization.this.authorization_key
}

output "authorization_use_status" {
  description = "The authorization use status."
  value       = azurerm_express_route_circuit_authorization.this.authorization_use_status
}

