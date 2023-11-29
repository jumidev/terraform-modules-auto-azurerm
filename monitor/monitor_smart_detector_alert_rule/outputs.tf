output "name" {
  value = azurerm_monitor_smart_detector_alert_rule.this.name
}

output "resource_group_name" {
  value = azurerm_monitor_smart_detector_alert_rule.this.resource_group_name
}

output "detector_type" {
  value = azurerm_monitor_smart_detector_alert_rule.this.detector_type
}

output "scope_resource_ids" {
  value = azurerm_monitor_smart_detector_alert_rule.this.scope_resource_ids
}

output "action_group" {
  value = azurerm_monitor_smart_detector_alert_rule.this.action_group
}

output "severity" {
  value = azurerm_monitor_smart_detector_alert_rule.this.severity
}

output "frequency" {
  value = azurerm_monitor_smart_detector_alert_rule.this.frequency
}

output "description" {
  value = azurerm_monitor_smart_detector_alert_rule.this.description
}

output "enabled" {
  value = azurerm_monitor_smart_detector_alert_rule.this.enabled
}

output "throttling_duration" {
  value = azurerm_monitor_smart_detector_alert_rule.this.throttling_duration
}

output "tags" {
  value = azurerm_monitor_smart_detector_alert_rule.this.tags
}

output "id" {
  description = "The ID of the Monitor Smart Detector Alert Rule."
  value       = azurerm_monitor_smart_detector_alert_rule.this.id
}

