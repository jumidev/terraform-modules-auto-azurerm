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

output "tags" {
  description = "A mapping of tags to assign to the resource. In addition to the Arguments listed above - the following Attributes are exported:"
  value       = azurerm_express_route_gateway.this.tags
}

output "id" {
  description = "The ID of the ExpressRoute gateway. ### Timeouts The 'timeouts' block allows you to specify [timeouts](https://www.terraform.io/language/resources/syntax#operation-timeouts) for certain actions:"
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
  description = "(Defaults to 90 minutes) Used when deleting the ExpressRoute Gateway. ## Import ExpressRoute Gateways can be imported using the 'resource id', e.g. '''shell terraform import azurerm_express_route_gateway.example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/mygroup1/providers/Microsoft.Network/expressRouteGateways/myExpressRouteGateway '''"
  value       = azurerm_express_route_gateway.this.delete
}

