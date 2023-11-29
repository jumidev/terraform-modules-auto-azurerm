output "name" {
  value = azurerm_monitor_private_link_scope.this.name
}

output "resource_group_name" {
  value = azurerm_monitor_private_link_scope.this.resource_group_name
}

output "tags" {
  value = azurerm_monitor_private_link_scope.this.tags
}

output "id" {
  description = "The ID of the Azure Monitor Private Link Scope."
  value       = azurerm_monitor_private_link_scope.this.id
}

