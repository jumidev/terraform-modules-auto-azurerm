output "logz_sub_account_id" {
  value = azurerm_logz_sub_account_tag_rule.this.logz_sub_account_id
}

output "tag_filter" {
  value = azurerm_logz_sub_account_tag_rule.this.tag_filter
}

output "send_aad_logs" {
  value = azurerm_logz_sub_account_tag_rule.this.send_aad_logs
}

output "send_activity_logs" {
  value = azurerm_logz_sub_account_tag_rule.this.send_activity_logs
}

output "send_subscription_logs" {
  value = azurerm_logz_sub_account_tag_rule.this.send_subscription_logs
}

output "id" {
  description = "The ID of the Logz Sub Account Tag Rule."
  value       = azurerm_logz_sub_account_tag_rule.this.id
}

