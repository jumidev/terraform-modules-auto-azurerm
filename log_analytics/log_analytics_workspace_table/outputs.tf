output "name" {
  value = azurerm_log_analytics_workspace_table.this.name
}

output "workspace_id" {
  value = azurerm_log_analytics_workspace_table.this.workspace_id
}

output "plan" {
  value = azurerm_log_analytics_workspace_table.this.plan
}

output "retention_in_days" {
  value = azurerm_log_analytics_workspace_table.this.retention_in_days
}

output "total_retention_in_days" {
  value = azurerm_log_analytics_workspace_table.this.total_retention_in_days
}

output "id" {
  description = "The Log Analytics Workspace Table ID."
  value       = azurerm_log_analytics_workspace_table.this.id
}

