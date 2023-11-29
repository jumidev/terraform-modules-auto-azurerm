output "resource_group_name" {
  value = azurerm_sentinel_log_analytics_workspace_onboarding.this.resource_group_name
}

output "workspace_name" {
  value = azurerm_sentinel_log_analytics_workspace_onboarding.this.workspace_name
}

output "customer_managed_key_enabled" {
  value = azurerm_sentinel_log_analytics_workspace_onboarding.this.customer_managed_key_enabled
}

output "id" {
  description = "The ID of the Security Insights Sentinel Onboarding States."
  value       = azurerm_sentinel_log_analytics_workspace_onboarding.this.id
}

