output "name" {
  value = azurerm_network_connection_monitor.this.name
}

output "location" {
  value = azurerm_network_connection_monitor.this.location
}

output "network_watcher_id" {
  value = azurerm_network_connection_monitor.this.network_watcher_id
}

output "endpoint" {
  value = azurerm_network_connection_monitor.this.endpoint
}

output "test_configuration" {
  value = azurerm_network_connection_monitor.this.test_configuration
}

output "test_group" {
  value = azurerm_network_connection_monitor.this.test_group
}

output "notes" {
  value = azurerm_network_connection_monitor.this.notes
}

output "output_workspace_resource_ids" {
  value = azurerm_network_connection_monitor.this.output_workspace_resource_ids
}

output "tags" {
  value = azurerm_network_connection_monitor.this.tags
}

output "id" {
  description = "The ID of the Network Connection Monitor."
  value       = azurerm_network_connection_monitor.this.id
}

