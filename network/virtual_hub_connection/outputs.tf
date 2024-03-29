output "name" {
  value = azurerm_virtual_hub_connection.this.name
}

output "virtual_hub_id" {
  value = azurerm_virtual_hub_connection.this.virtual_hub_id
}

output "remote_virtual_network_id" {
  value = azurerm_virtual_hub_connection.this.remote_virtual_network_id
}

output "internet_security_enabled" {
  value = azurerm_virtual_hub_connection.this.internet_security_enabled
}

output "routing" {
  value = azurerm_virtual_hub_connection.this.routing
}

output "next_hop_ip_address" {
  description = "The IP Address which should be used for the Next Hop. In addition to the Arguments listed above - the following Attributes are exported:"
  value       = azurerm_virtual_hub_connection.this.next_hop_ip_address
}

output "id" {
  description = "The ID of the Virtual Hub Connection."
  value       = azurerm_virtual_hub_connection.this.id
}

