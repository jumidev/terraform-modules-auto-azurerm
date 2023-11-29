output "name" {
  value = azurerm_log_analytics_workspace.this.name
}

output "resource_group_name" {
  value = azurerm_log_analytics_workspace.this.resource_group_name
}

output "location" {
  value = azurerm_log_analytics_workspace.this.location
}

output "allow_resource_only_permissions" {
  value = azurerm_log_analytics_workspace.this.allow_resource_only_permissions
}

output "local_authentication_disabled" {
  value = azurerm_log_analytics_workspace.this.local_authentication_disabled
}

output "sku" {
  value = azurerm_log_analytics_workspace.this.sku
}

output "retention_in_days" {
  value = azurerm_log_analytics_workspace.this.retention_in_days
}

output "daily_quota_gb" {
  value = azurerm_log_analytics_workspace.this.daily_quota_gb
}

output "cmk_for_query_forced" {
  value = azurerm_log_analytics_workspace.this.cmk_for_query_forced
}

output "identity" {
  value = azurerm_log_analytics_workspace.this.identity
}

output "internet_ingestion_enabled" {
  value = azurerm_log_analytics_workspace.this.internet_ingestion_enabled
}

output "internet_query_enabled" {
  value = azurerm_log_analytics_workspace.this.internet_query_enabled
}

output "reservation_capacity_in_gb_per_day" {
  value = azurerm_log_analytics_workspace.this.reservation_capacity_in_gb_per_day
}

output "data_collection_rule_id" {
  value = azurerm_log_analytics_workspace.this.data_collection_rule_id
}

output "tags" {
  value = azurerm_log_analytics_workspace.this.tags
}

output "id" {
  description = "The Log Analytics Workspace ID."
  value       = azurerm_log_analytics_workspace.this.id
}

output "primary_shared_key" {
  description = "The Primary shared key for the Log Analytics Workspace."
  value       = azurerm_log_analytics_workspace.this.primary_shared_key
}

output "secondary_shared_key" {
  description = "The Secondary shared key for the Log Analytics Workspace."
  value       = azurerm_log_analytics_workspace.this.secondary_shared_key
}

output "workspace_id" {
  description = "The Workspace (or Customer) ID for the Log Analytics Workspace."
  value       = azurerm_log_analytics_workspace.this.workspace_id
}

