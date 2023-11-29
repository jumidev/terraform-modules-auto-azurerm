output "logz_monitor_id" {
  value = azurerm_logz_tag_rule.this.logz_monitor_id
}

output "tag_filter" {
  value = azurerm_logz_tag_rule.this.tag_filter
}

output "send_aad_logs" {
  value = azurerm_logz_tag_rule.this.send_aad_logs
}

output "send_activity_logs" {
  value = azurerm_logz_tag_rule.this.send_activity_logs
}

output "send_subscription_logs" {
  value = azurerm_logz_tag_rule.this.send_subscription_logs
}

output "id" {
  description = "The ID of the logz Tag Rule."
  value       = azurerm_logz_tag_rule.this.id
}

