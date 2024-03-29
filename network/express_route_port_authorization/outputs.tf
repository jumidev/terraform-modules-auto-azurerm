output "name" {
  value = azurerm_express_route_port_authorization.this.name
}

output "resource_group_name" {
  value = azurerm_express_route_port_authorization.this.resource_group_name
}

output "express_route_port_name" {
  value = azurerm_express_route_port_authorization.this.express_route_port_name
}

output "express_route_port_name" {
  description = "The name of the Express Route Port in which to create the Authorization. Changing this forces a new resource to be created. In addition to the Arguments listed above - the following Attributes are exported:"
  value       = azurerm_express_route_port_authorization.this.express_route_port_name
}

output "id" {
  description = "The ID of the ExpressRoute Port Authorization."
  value       = azurerm_express_route_port_authorization.this.id
}

output "authorization_key" {
  description = "The Authorization Key."
  value       = azurerm_express_route_port_authorization.this.authorization_key
}

output "authorization_use_status" {
  description = "The authorization use status."
  value       = azurerm_express_route_port_authorization.this.authorization_use_status
}

