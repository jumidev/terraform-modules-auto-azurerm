output "name" {
  value = azurerm_log_analytics_workspace_table.this.name
}

output "workspace_id" {
  value = azurerm_log_analytics_workspace_table.this.workspace_id
}

output "retention_in_days" {
  value = azurerm_log_analytics_workspace_table.this.retention_in_days
}

output "id" {
  description = "The Log Analytics Workspace Table ID."
  value       = azurerm_log_analytics_workspace_table.this.id
}

output "workspace_id" {
  description = "The Workspace (or Customer) ID for the Log Analytics Workspace."
  value       = azurerm_log_analytics_workspace_table.this.workspace_id
}

output "retention_in_days" {
  description = "The table's data retention in days."
  value       = azurerm_log_analytics_workspace_table.this.retention_in_days
}

