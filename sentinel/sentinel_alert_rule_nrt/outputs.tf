output "name" {
  value = azurerm_sentinel_alert_rule_nrt.this.name
}

output "log_analytics_workspace_id" {
  value = azurerm_sentinel_alert_rule_nrt.this.log_analytics_workspace_id
}

output "display_name" {
  value = azurerm_sentinel_alert_rule_nrt.this.display_name
}

output "severity" {
  value = azurerm_sentinel_alert_rule_nrt.this.severity
}

output "query" {
  value = azurerm_sentinel_alert_rule_nrt.this.query
}

output "alert_details_override" {
  value = azurerm_sentinel_alert_rule_nrt.this.alert_details_override
}

output "alert_rule_template_guid" {
  value = azurerm_sentinel_alert_rule_nrt.this.alert_rule_template_guid
}

output "alert_rule_template_version" {
  value = azurerm_sentinel_alert_rule_nrt.this.alert_rule_template_version
}

output "custom_details" {
  value = azurerm_sentinel_alert_rule_nrt.this.custom_details
}

output "description" {
  value = azurerm_sentinel_alert_rule_nrt.this.description
}

output "enabled" {
  value = azurerm_sentinel_alert_rule_nrt.this.enabled
}

output "entity_mapping" {
  value = azurerm_sentinel_alert_rule_nrt.this.entity_mapping
}

output "event_grouping" {
  value = azurerm_sentinel_alert_rule_nrt.this.event_grouping
}

output "sentinel_entity_mapping" {
  value = azurerm_sentinel_alert_rule_nrt.this.sentinel_entity_mapping
}

output "incident" {
  value = azurerm_sentinel_alert_rule_nrt.this.incident
}

output "suppression_duration" {
  value = azurerm_sentinel_alert_rule_nrt.this.suppression_duration
}

output "suppression_enabled" {
  value = azurerm_sentinel_alert_rule_nrt.this.suppression_enabled
}

output "tactics" {
  value = azurerm_sentinel_alert_rule_nrt.this.tactics
}

output "techniques" {
  value = azurerm_sentinel_alert_rule_nrt.this.techniques
}

output "id" {
  description = "The ID of the Sentinel NRT Alert Rule."
  value       = azurerm_sentinel_alert_rule_nrt.this.id
}

