output "name" {
  value = azurerm_log_analytics_query_pack.this.name
}

output "location" {
  value = azurerm_log_analytics_query_pack.this.location
}

output "resource_group_name" {
  value = azurerm_log_analytics_query_pack.this.resource_group_name
}

output "tags" {
  value = azurerm_log_analytics_query_pack.this.tags
}

output "id" {
  description = "The ID of the Log Analytics Query Pack."
  value       = azurerm_log_analytics_query_pack.this.id
}

