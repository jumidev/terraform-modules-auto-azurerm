output "name" {
  value = azurerm_monitor_private_link_scoped_service.this.name
}

output "resource_group_name" {
  value = azurerm_monitor_private_link_scoped_service.this.resource_group_name
}

output "scope_name" {
  value = azurerm_monitor_private_link_scoped_service.this.scope_name
}

output "linked_resource_id" {
  value = azurerm_monitor_private_link_scoped_service.this.linked_resource_id
}

output "id" {
  description = "The ID of the Azure Monitor Private Link Scoped Service."
  value       = azurerm_monitor_private_link_scoped_service.this.id
}

