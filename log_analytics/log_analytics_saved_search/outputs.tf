output "name" {
  value = azurerm_log_analytics_saved_search.this.name
}

output "log_analytics_workspace_id" {
  value = azurerm_log_analytics_saved_search.this.log_analytics_workspace_id
}

output "display_name" {
  value = azurerm_log_analytics_saved_search.this.display_name
}

output "category" {
  value = azurerm_log_analytics_saved_search.this.category
}

output "query" {
  value = azurerm_log_analytics_saved_search.this.query
}

output "function_alias" {
  value = azurerm_log_analytics_saved_search.this.function_alias
}

output "function_parameters" {
  value = azurerm_log_analytics_saved_search.this.function_parameters
}

output "tags" {
  value = azurerm_log_analytics_saved_search.this.tags
}

output "id" {
  description = "The Log Analytics Saved Search ID."
  value       = azurerm_log_analytics_saved_search.this.id
}

