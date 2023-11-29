output "name" {
  value = azurerm_sentinel_alert_rule_ms_security_incident.this.name
}

output "log_analytics_workspace_id" {
  value = azurerm_sentinel_alert_rule_ms_security_incident.this.log_analytics_workspace_id
}

output "display_name" {
  value = azurerm_sentinel_alert_rule_ms_security_incident.this.display_name
}

output "product_filter" {
  value = azurerm_sentinel_alert_rule_ms_security_incident.this.product_filter
}

output "severity_filter" {
  value = azurerm_sentinel_alert_rule_ms_security_incident.this.severity_filter
}

output "alert_rule_template_guid" {
  value = azurerm_sentinel_alert_rule_ms_security_incident.this.alert_rule_template_guid
}

output "description" {
  value = azurerm_sentinel_alert_rule_ms_security_incident.this.description
}

output "enabled" {
  value = azurerm_sentinel_alert_rule_ms_security_incident.this.enabled
}

output "display_name_filter" {
  value = azurerm_sentinel_alert_rule_ms_security_incident.this.display_name_filter
}

output "display_name_exclude_filter" {
  value = azurerm_sentinel_alert_rule_ms_security_incident.this.display_name_exclude_filter
}

output "id" {
  description = "The ID of the Sentinel MS Security Incident Alert Rule."
  value       = azurerm_sentinel_alert_rule_ms_security_incident.this.id
}

