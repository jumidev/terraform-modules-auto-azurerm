output "name" {
  value = azurerm_application_insights.this.name
}

output "resource_group_name" {
  value = azurerm_application_insights.this.resource_group_name
}

output "location" {
  value = azurerm_application_insights.this.location
}

output "application_type" {
  value = azurerm_application_insights.this.application_type
}

output "daily_data_cap_in_gb" {
  value = azurerm_application_insights.this.daily_data_cap_in_gb
}

output "daily_data_cap_notifications_disabled" {
  value = azurerm_application_insights.this.daily_data_cap_notifications_disabled
}

output "retention_in_days" {
  value = azurerm_application_insights.this.retention_in_days
}

output "sampling_percentage" {
  value = azurerm_application_insights.this.sampling_percentage
}

output "disable_ip_masking" {
  value = azurerm_application_insights.this.disable_ip_masking
}

output "tags" {
  value = azurerm_application_insights.this.tags
}

output "workspace_id" {
  value = azurerm_application_insights.this.workspace_id
}

output "local_authentication_disabled" {
  value = azurerm_application_insights.this.local_authentication_disabled
}

output "internet_ingestion_enabled" {
  value = azurerm_application_insights.this.internet_ingestion_enabled
}

output "internet_query_enabled" {
  value = azurerm_application_insights.this.internet_query_enabled
}

output "force_customer_storage_for_profiler" {
  value = azurerm_application_insights.this.force_customer_storage_for_profiler
}

output "id" {
  description = "The ID of the Application Insights component."
  value       = azurerm_application_insights.this.id
}

output "app_id" {
  description = "The App ID associated with this Application Insights component."
  value       = azurerm_application_insights.this.app_id
}

output "instrumentation_key" {
  description = "The Instrumentation Key for this Application Insights component. (Sensitive)"
  value       = azurerm_application_insights.this.instrumentation_key
}

output "connection_string" {
  description = "The Connection String for this Application Insights component. (Sensitive)"
  value       = azurerm_application_insights.this.connection_string
}

