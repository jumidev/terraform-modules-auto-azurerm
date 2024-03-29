output "name" {
  value = azurerm_express_route_connection.this.name
}

output "express_route_circuit_peering_id" {
  value = azurerm_express_route_connection.this.express_route_circuit_peering_id
}

output "express_route_gateway_id" {
  value = azurerm_express_route_connection.this.express_route_gateway_id
}

output "authorization_key" {
  value = azurerm_express_route_connection.this.authorization_key
}

output "enable_internet_security" {
  value = azurerm_express_route_connection.this.enable_internet_security
}

output "express_route_gateway_bypass_enabled" {
  value = azurerm_express_route_connection.this.express_route_gateway_bypass_enabled
}

output "routing" {
  value = azurerm_express_route_connection.this.routing
}

output "routing_weight" {
  value = azurerm_express_route_connection.this.routing_weight
}

output "route_table_ids" {
  description = "A list of IDs of the Virtual Hub Route Table to propagate routes from Express Route Connection to the route table. In addition to the Arguments listed above - the following Attributes are exported:"
  value       = azurerm_express_route_connection.this.route_table_ids
}

output "id" {
  description = "The ID of the Express Route Connection."
  value       = azurerm_express_route_connection.this.id
}

