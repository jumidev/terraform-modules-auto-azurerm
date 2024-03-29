output "name" {
  value = azurerm_virtual_hub_routing_intent.this.name
}

output "virtual_hub_id" {
  value = azurerm_virtual_hub_routing_intent.this.virtual_hub_id
}

output "routing_policy" {
  value = azurerm_virtual_hub_routing_intent.this.routing_policy
}

output "next_hop" {
  description = "The resource ID of the next hop on which this routing policy is applicable to. In addition to the Arguments listed above - the following Attributes are exported:"
  value       = azurerm_virtual_hub_routing_intent.this.next_hop
}

output "id" {
  description = "The ID of the Virtual Hub Routing Intent."
  value       = azurerm_virtual_hub_routing_intent.this.id
}

