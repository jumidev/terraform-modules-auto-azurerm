output "name" {
  value = azurerm_monitor_scheduled_query_rules_alert_v2.this.name
}

output "resource_group_name" {
  value = azurerm_monitor_scheduled_query_rules_alert_v2.this.resource_group_name
}

output "location" {
  value = azurerm_monitor_scheduled_query_rules_alert_v2.this.location
}

output "criteria" {
  value = azurerm_monitor_scheduled_query_rules_alert_v2.this.criteria
}

output "evaluation_frequency" {
  value = azurerm_monitor_scheduled_query_rules_alert_v2.this.evaluation_frequency
}

output "scopes" {
  value = azurerm_monitor_scheduled_query_rules_alert_v2.this.scopes
}

output "severity" {
  value = azurerm_monitor_scheduled_query_rules_alert_v2.this.severity
}

output "window_duration" {
  value = azurerm_monitor_scheduled_query_rules_alert_v2.this.window_duration
}

output "action" {
  value = azurerm_monitor_scheduled_query_rules_alert_v2.this.action
}

output "auto_mitigation_enabled" {
  value = azurerm_monitor_scheduled_query_rules_alert_v2.this.auto_mitigation_enabled
}

output "workspace_alerts_storage_enabled" {
  value = azurerm_monitor_scheduled_query_rules_alert_v2.this.workspace_alerts_storage_enabled
}

output "description" {
  value = azurerm_monitor_scheduled_query_rules_alert_v2.this.description
}

output "display_name" {
  value = azurerm_monitor_scheduled_query_rules_alert_v2.this.display_name
}

output "enabled" {
  value = azurerm_monitor_scheduled_query_rules_alert_v2.this.enabled
}

output "mute_actions_after_alert_duration" {
  value = azurerm_monitor_scheduled_query_rules_alert_v2.this.mute_actions_after_alert_duration
}

output "query_time_range_override" {
  value = azurerm_monitor_scheduled_query_rules_alert_v2.this.query_time_range_override
}

output "skip_query_validation" {
  value = azurerm_monitor_scheduled_query_rules_alert_v2.this.skip_query_validation
}

output "tags" {
  value = azurerm_monitor_scheduled_query_rules_alert_v2.this.tags
}

output "target_resource_types" {
  value = azurerm_monitor_scheduled_query_rules_alert_v2.this.target_resource_types
}

output "id" {
  description = "The ID of the Monitor Scheduled Query Rule."
  value       = azurerm_monitor_scheduled_query_rules_alert_v2.this.id
}

output "created_with_api_version" {
  description = "The api-version used when creating this alert rule."
  value       = azurerm_monitor_scheduled_query_rules_alert_v2.this.created_with_api_version
}

output "is_a_legacy_log_analytics_rule" {
  description = "True if this alert rule is a legacy Log Analytic Rule."
  value       = azurerm_monitor_scheduled_query_rules_alert_v2.this.is_a_legacy_log_analytics_rule
}

output "is_workspace_alerts_storage_configured" {
  description = "The flag indicates whether this Scheduled Query Rule has been configured to be stored in the customer's storage."
  value       = azurerm_monitor_scheduled_query_rules_alert_v2.this.is_workspace_alerts_storage_configured
}

