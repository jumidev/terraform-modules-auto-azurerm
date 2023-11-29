output "name" {
  value = azurerm_virtual_hub_routing_intent.this.name
}

output "virtual_hub_id" {
  value = azurerm_virtual_hub_routing_intent.this.virtual_hub_id
}

output "routing_policy" {
  value = azurerm_virtual_hub_routing_intent.this.routing_policy
}

output "id" {
  description = "The ID of the Virtual Hub Routing Intent."
  value       = azurerm_virtual_hub_routing_intent.this.id
}

