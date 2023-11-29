output "datadog_monitor_id" {
  value = azurerm_datadog_monitor_tag_rule.this.datadog_monitor_id
}

output "name" {
  value = azurerm_datadog_monitor_tag_rule.this.name
}

output "log" {
  value = azurerm_datadog_monitor_tag_rule.this.log
}

output "metric" {
  value = azurerm_datadog_monitor_tag_rule.this.metric
}

