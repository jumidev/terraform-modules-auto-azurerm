output "name" {
  value = azurerm_network_watcher.this.name
}

output "resource_group_name" {
  value = azurerm_network_watcher.this.resource_group_name
}

output "location" {
  value = azurerm_network_watcher.this.location
}

output "tags" {
  value = azurerm_network_watcher.this.tags
}

output "id" {
  description = "The ID of the Network Watcher."
  value       = azurerm_network_watcher.this.id
}

