output "monitor_id" {
  value = azurerm_new_relic_tag_rule.this.monitor_id
}

output "azure_active_directory_log_enabled" {
  value = azurerm_new_relic_tag_rule.this.azure_active_directory_log_enabled
}

output "activity_log_enabled" {
  value = azurerm_new_relic_tag_rule.this.activity_log_enabled
}

output "log_tag_filter" {
  value = azurerm_new_relic_tag_rule.this.log_tag_filter
}

output "metric_enabled" {
  value = azurerm_new_relic_tag_rule.this.metric_enabled
}

output "metric_tag_filter" {
  value = azurerm_new_relic_tag_rule.this.metric_tag_filter
}

output "subscription_log_enabled" {
  value = azurerm_new_relic_tag_rule.this.subscription_log_enabled
}

output "id" {
  description = "The ID of the Azure Native New Relic Tag Rule."
  value       = azurerm_new_relic_tag_rule.this.id
}

