output "name" {
  value = azurerm_network_watcher_flow_log.this.name
}

output "network_watcher_name" {
  value = azurerm_network_watcher_flow_log.this.network_watcher_name
}

output "resource_group_name" {
  value = azurerm_network_watcher_flow_log.this.resource_group_name
}

output "network_security_group_id" {
  value = azurerm_network_watcher_flow_log.this.network_security_group_id
}

output "storage_account_id" {
  value = azurerm_network_watcher_flow_log.this.storage_account_id
}

output "enabled" {
  value = azurerm_network_watcher_flow_log.this.enabled
}

output "retention_policy" {
  value = azurerm_network_watcher_flow_log.this.retention_policy
}

output "location" {
  value = azurerm_network_watcher_flow_log.this.location
}

output "traffic_analytics" {
  value = azurerm_network_watcher_flow_log.this.traffic_analytics
}

output "version" {
  value = azurerm_network_watcher_flow_log.this.version
}

output "tags" {
  value = azurerm_network_watcher_flow_log.this.tags
}

output "id" {
  description = "The ID of the Network Watcher."
  value       = azurerm_network_watcher_flow_log.this.id
}

