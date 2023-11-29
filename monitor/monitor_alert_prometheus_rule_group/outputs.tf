output "name" {
  value = azurerm_monitor_alert_prometheus_rule_group.this.name
}

output "location" {
  value = azurerm_monitor_alert_prometheus_rule_group.this.location
}

output "resource_group_name" {
  value = azurerm_monitor_alert_prometheus_rule_group.this.resource_group_name
}

output "rule" {
  value = azurerm_monitor_alert_prometheus_rule_group.this.rule
}

output "scopes" {
  value = azurerm_monitor_alert_prometheus_rule_group.this.scopes
}

output "cluster_name" {
  value = azurerm_monitor_alert_prometheus_rule_group.this.cluster_name
}

output "description" {
  value = azurerm_monitor_alert_prometheus_rule_group.this.description
}

output "rule_group_enabled" {
  value = azurerm_monitor_alert_prometheus_rule_group.this.rule_group_enabled
}

output "interval" {
  value = azurerm_monitor_alert_prometheus_rule_group.this.interval
}

output "tags" {
  value = azurerm_monitor_alert_prometheus_rule_group.this.tags
}

output "id" {
  description = "The ID of the Alert Management Prometheus Rule Group."
  value       = azurerm_monitor_alert_prometheus_rule_group.this.id
}

