output "location" {
  value = azurerm_arc_private_link_scope.this.location
}

output "name" {
  value = azurerm_arc_private_link_scope.this.name
}

output "resource_group_name" {
  value = azurerm_arc_private_link_scope.this.resource_group_name
}

output "public_network_access_enabled" {
  value = azurerm_arc_private_link_scope.this.public_network_access_enabled
}

output "tags" {
  value = azurerm_arc_private_link_scope.this.tags
}

output "id" {
  description = "The ID of the Azure Arc Private Link Scope."
  value       = azurerm_arc_private_link_scope.this.id
}

