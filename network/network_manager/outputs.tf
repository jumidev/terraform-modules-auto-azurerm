output "name" {
  value = azurerm_network_manager.this.name
}

output "resource_group_name" {
  value = azurerm_network_manager.this.resource_group_name
}

output "location" {
  value = azurerm_network_manager.this.location
}

output "scope" {
  value = azurerm_network_manager.this.scope
}

output "scope_accesses" {
  value = azurerm_network_manager.this.scope_accesses
}

output "description" {
  value = azurerm_network_manager.this.description
}

output "tags" {
  value = azurerm_network_manager.this.tags
}

output "id" {
  description = "The ID of the Network Managers."
  value       = azurerm_network_manager.this.id
}

output "cross_tenant_scopes" {
  description = "A 'cross_tenant_scopes' block."
  value       = azurerm_network_manager.this.cross_tenant_scopes
}

output "management_groups" {
  description = "List of management groups."
  value       = azurerm_network_manager.this.management_groups
}

output "subscriptions" {
  description = "List of subscriptions."
  value       = azurerm_network_manager.this.subscriptions
}

output "tenant_id" {
  description = "Tenant ID."
  value       = azurerm_network_manager.this.tenant_id
}

