output "data_source_type" {
  value = azurerm_log_analytics_linked_storage_account.this.data_source_type
}

output "resource_group_name" {
  value = azurerm_log_analytics_linked_storage_account.this.resource_group_name
}

output "workspace_resource_id" {
  value = azurerm_log_analytics_linked_storage_account.this.workspace_resource_id
}

output "storage_account_ids" {
  value = azurerm_log_analytics_linked_storage_account.this.storage_account_ids
}

output "id" {
  description = "The ID of the Log Analytics Linked Storage Account."
  value       = azurerm_log_analytics_linked_storage_account.this.id
}

