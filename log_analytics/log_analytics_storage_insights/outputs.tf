output "name" {
  value = azurerm_log_analytics_storage_insights.this.name
}

output "resource_group_name" {
  value = azurerm_log_analytics_storage_insights.this.resource_group_name
}

output "workspace_id" {
  value = azurerm_log_analytics_storage_insights.this.workspace_id
}

output "storage_account_id" {
  value = azurerm_log_analytics_storage_insights.this.storage_account_id
}

output "storage_account_key" {
  value = azurerm_log_analytics_storage_insights.this.storage_account_key
}

output "blob_container_names" {
  value = azurerm_log_analytics_storage_insights.this.blob_container_names
}

output "table_names" {
  value = azurerm_log_analytics_storage_insights.this.table_names
}

output "table_names" {
  description = "The names of the Azure tables that the workspace should read. In addition to the Arguments listed above - the following Attributes are exported:"
  value       = azurerm_log_analytics_storage_insights.this.table_names
}

output "id" {
  description = "The ID of the Log Analytics Storage Insights."
  value       = azurerm_log_analytics_storage_insights.this.id
}

