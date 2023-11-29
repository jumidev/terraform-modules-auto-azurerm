output "name" {
  value = azurerm_log_analytics_datasource_windows_event.this.name
}

output "resource_group_name" {
  value = azurerm_log_analytics_datasource_windows_event.this.resource_group_name
}

output "workspace_name" {
  value = azurerm_log_analytics_datasource_windows_event.this.workspace_name
}

output "event_log_name" {
  value = azurerm_log_analytics_datasource_windows_event.this.event_log_name
}

output "event_types" {
  value = azurerm_log_analytics_datasource_windows_event.this.event_types
}

output "id" {
  description = "The ID of the Log Analytics Windows Event DataSource."
  value       = azurerm_log_analytics_datasource_windows_event.this.id
}

