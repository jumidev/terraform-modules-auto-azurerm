output "name" {
  value = azurerm_route_server.this.name
}

output "resource_group_name" {
  value = azurerm_route_server.this.resource_group_name
}

output "location" {
  value = azurerm_route_server.this.location
}

output "subnet_id" {
  value = azurerm_route_server.this.subnet_id
}

output "sku" {
  value = azurerm_route_server.this.sku
}

output "public_ip_address_id" {
  value = azurerm_route_server.this.public_ip_address_id
}

output "branch_to_branch_traffic_enabled" {
  value = azurerm_route_server.this.branch_to_branch_traffic_enabled
}

output "tags" {
  value = azurerm_route_server.this.tags
}

output "id" {
  description = "The ID of the Route Server ."
  value       = azurerm_route_server.this.id
}

