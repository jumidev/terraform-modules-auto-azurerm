output "name" {
  value = azurerm_log_analytics_datasource_windows_performance_counter.this.name
}

output "resource_group_name" {
  value = azurerm_log_analytics_datasource_windows_performance_counter.this.resource_group_name
}

output "workspace_name" {
  value = azurerm_log_analytics_datasource_windows_performance_counter.this.workspace_name
}

output "object_name" {
  value = azurerm_log_analytics_datasource_windows_performance_counter.this.object_name
}

output "instance_name" {
  value = azurerm_log_analytics_datasource_windows_performance_counter.this.instance_name
}

output "counter_name" {
  value = azurerm_log_analytics_datasource_windows_performance_counter.this.counter_name
}

output "interval_seconds" {
  value = azurerm_log_analytics_datasource_windows_performance_counter.this.interval_seconds
}

output "id" {
  description = "The ID of the Log Analytics Windows Performance Counter DataSource."
  value       = azurerm_log_analytics_datasource_windows_performance_counter.this.id
}

