output "name" {
  value = azurerm_sentinel_alert_rule_scheduled.this.name
}

output "log_analytics_workspace_id" {
  value = azurerm_sentinel_alert_rule_scheduled.this.log_analytics_workspace_id
}

output "display_name" {
  value = azurerm_sentinel_alert_rule_scheduled.this.display_name
}

output "severity" {
  value = azurerm_sentinel_alert_rule_scheduled.this.severity
}

output "query" {
  value = azurerm_sentinel_alert_rule_scheduled.this.query
}

output "alert_details_override" {
  value = azurerm_sentinel_alert_rule_scheduled.this.alert_details_override
}

output "alert_rule_template_guid" {
  value = azurerm_sentinel_alert_rule_scheduled.this.alert_rule_template_guid
}

output "alert_rule_template_version" {
  value = azurerm_sentinel_alert_rule_scheduled.this.alert_rule_template_version
}

output "custom_details" {
  value = azurerm_sentinel_alert_rule_scheduled.this.custom_details
}

output "description" {
  value = azurerm_sentinel_alert_rule_scheduled.this.description
}

output "enabled" {
  value = azurerm_sentinel_alert_rule_scheduled.this.enabled
}

output "entity_mapping" {
  value = azurerm_sentinel_alert_rule_scheduled.this.entity_mapping
}

output "event_grouping" {
  value = azurerm_sentinel_alert_rule_scheduled.this.event_grouping
}

output "incident_configuration" {
  value = azurerm_sentinel_alert_rule_scheduled.this.incident_configuration
}

output "query_frequency" {
  value = azurerm_sentinel_alert_rule_scheduled.this.query_frequency
}

output "query_period" {
  value = azurerm_sentinel_alert_rule_scheduled.this.query_period
}

output "suppression_duration" {
  value = azurerm_sentinel_alert_rule_scheduled.this.suppression_duration
}

output "suppression_enabled" {
  value = azurerm_sentinel_alert_rule_scheduled.this.suppression_enabled
}

output "sentinel_entity_mapping" {
  value = azurerm_sentinel_alert_rule_scheduled.this.sentinel_entity_mapping
}

output "tactics" {
  value = azurerm_sentinel_alert_rule_scheduled.this.tactics
}

output "techniques" {
  value = azurerm_sentinel_alert_rule_scheduled.this.techniques
}

output "trigger_operator" {
  value = azurerm_sentinel_alert_rule_scheduled.this.trigger_operator
}

output "trigger_threshold" {
  value = azurerm_sentinel_alert_rule_scheduled.this.trigger_threshold
}

output "id" {
  description = "The ID of the Sentinel Scheduled Alert Rule."
  value       = azurerm_sentinel_alert_rule_scheduled.this.id
}

