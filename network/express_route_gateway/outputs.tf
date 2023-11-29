output "name" {
  value = azurerm_express_route_gateway.this.name
}

output "resource_group_name" {
  value = azurerm_express_route_gateway.this.resource_group_name
}

output "location" {
  value = azurerm_express_route_gateway.this.location
}

output "virtual_hub_id" {
  value = azurerm_express_route_gateway.this.virtual_hub_id
}

output "scale_units" {
  value = azurerm_express_route_gateway.this.scale_units
}

output "allow_non_virtual_wan_traffic" {
  value = azurerm_express_route_gateway.this.allow_non_virtual_wan_traffic
}

output "tags" {
  value = azurerm_express_route_gateway.this.tags
}

output "id" {
  description = "The ID of the ExpressRoute gateway."
  value       = azurerm_express_route_gateway.this.id
}

output "create" {
  description = "(Defaults to 90 minutes) Used when creating the ExpressRoute Gateway."
  value       = azurerm_express_route_gateway.this.create
}

output "update" {
  description = "(Defaults to 90 minutes) Used when updating the ExpressRoute Gateway."
  value       = azurerm_express_route_gateway.this.update
}

output "read" {
  description = "(Defaults to 5 minutes) Used when retrieving the ExpressRoute Gateway."
  value       = azurerm_express_route_gateway.this.read
}

output "delete" {
  description = "(Defaults to 90 minutes) Used when deleting the ExpressRoute Gateway."
  value       = azurerm_express_route_gateway.this.delete
}

