output "name" {
  value = azurerm_application_insights_analytics_item.this.name
}

output "application_insights_id" {
  value = azurerm_application_insights_analytics_item.this.application_insights_id
}

output "type" {
  value = azurerm_application_insights_analytics_item.this.type
}

output "scope" {
  value = azurerm_application_insights_analytics_item.this.scope
}

output "content" {
  value = azurerm_application_insights_analytics_item.this.content
}

output "function_alias" {
  value = azurerm_application_insights_analytics_item.this.function_alias
}

output "id" {
  description = "The ID of the Application Insights Analytics Item."
  value       = azurerm_application_insights_analytics_item.this.id
}

output "time_created" {
  description = "A string containing the time the Analytics Item was created."
  value       = azurerm_application_insights_analytics_item.this.time_created
}

output "time_modified" {
  description = "A string containing the time the Analytics Item was last modified."
  value       = azurerm_application_insights_analytics_item.this.time_modified
}

output "version" {
  description = "A string indicating the version of the query format"
  value       = azurerm_application_insights_analytics_item.this.version
}

