output "name" {
  value = azurerm_monitor_workspace.this.name
}

output "resource_group_name" {
  value = azurerm_monitor_workspace.this.resource_group_name
}

output "location" {
  value = azurerm_monitor_workspace.this.location
}

output "public_network_access_enabled" {
  value = azurerm_monitor_workspace.this.public_network_access_enabled
}

output "tags" {
  value = azurerm_monitor_workspace.this.tags
}

output "id" {
  description = "The ID of the Azure Monitor Workspace."
  value       = azurerm_monitor_workspace.this.id
}

output "query_endpoint" {
  description = "The query endpoint for the Azure Monitor Workspace."
  value       = azurerm_monitor_workspace.this.query_endpoint
}

