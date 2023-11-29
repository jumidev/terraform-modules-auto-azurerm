output "name" {
  value = azurerm_monitor_metric_alert.this.name
}

output "resource_group_name" {
  value = azurerm_monitor_metric_alert.this.resource_group_name
}

output "scopes" {
  value = azurerm_monitor_metric_alert.this.scopes
}

output "criteria" {
  value = azurerm_monitor_metric_alert.this.criteria
}

output "dynamic_criteria" {
  value = azurerm_monitor_metric_alert.this.dynamic_criteria
}

output "application_insights_web_test_location_availability_criteria" {
  value = azurerm_monitor_metric_alert.this.application_insights_web_test_location_availability_criteria
}

output "action" {
  value = azurerm_monitor_metric_alert.this.action
}

output "enabled" {
  value = azurerm_monitor_metric_alert.this.enabled
}

output "auto_mitigate" {
  value = azurerm_monitor_metric_alert.this.auto_mitigate
}

output "description" {
  value = azurerm_monitor_metric_alert.this.description
}

output "frequency" {
  value = azurerm_monitor_metric_alert.this.frequency
}

output "severity" {
  value = azurerm_monitor_metric_alert.this.severity
}

output "target_resource_type" {
  value = azurerm_monitor_metric_alert.this.target_resource_type
}

output "target_resource_location" {
  value = azurerm_monitor_metric_alert.this.target_resource_location
}

output "window_size" {
  value = azurerm_monitor_metric_alert.this.window_size
}

output "tags" {
  value = azurerm_monitor_metric_alert.this.tags
}

output "id" {
  description = "The ID of the metric alert."
  value       = azurerm_monitor_metric_alert.this.id
}

