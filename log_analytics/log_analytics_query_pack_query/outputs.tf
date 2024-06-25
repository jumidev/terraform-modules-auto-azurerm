output "query_pack_id" {
  value = azurerm_log_analytics_query_pack_query.this.query_pack_id
}

output "body" {
  value = azurerm_log_analytics_query_pack_query.this.body
}

output "display_name" {
  value = azurerm_log_analytics_query_pack_query.this.display_name
}

output "name" {
  value = azurerm_log_analytics_query_pack_query.this.name
}

output "description" {
  value = azurerm_log_analytics_query_pack_query.this.description
}

output "categories" {
  value = azurerm_log_analytics_query_pack_query.this.categories
}

output "additional_settings_json" {
  value = azurerm_log_analytics_query_pack_query.this.additional_settings_json
}

output "resource_types" {
  value = azurerm_log_analytics_query_pack_query.this.resource_types
}

output "solutions" {
  value = azurerm_log_analytics_query_pack_query.this.solutions
}

output "tags" {
  value = azurerm_log_analytics_query_pack_query.this.tags
}

output "id" {
  description = "The ID of the Log Analytics Query Pack Query."
  value       = azurerm_log_analytics_query_pack_query.this.id
}

