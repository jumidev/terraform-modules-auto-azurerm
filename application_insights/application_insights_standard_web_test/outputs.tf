output "name" {
  value = azurerm_application_insights_standard_web_test.this.name
}

output "resource_group_name" {
  value = azurerm_application_insights_standard_web_test.this.resource_group_name
}

output "location" {
  value = azurerm_application_insights_standard_web_test.this.location
}

output "application_insights_id" {
  value = azurerm_application_insights_standard_web_test.this.application_insights_id
}

output "geo_locations" {
  value = azurerm_application_insights_standard_web_test.this.geo_locations
}

output "request" {
  value = azurerm_application_insights_standard_web_test.this.request
}

output "description" {
  value = azurerm_application_insights_standard_web_test.this.description
}

output "enabled" {
  value = azurerm_application_insights_standard_web_test.this.enabled
}

output "frequency" {
  value = azurerm_application_insights_standard_web_test.this.frequency
}

output "retry_enabled" {
  value = azurerm_application_insights_standard_web_test.this.retry_enabled
}

output "tags" {
  value = azurerm_application_insights_standard_web_test.this.tags
}

output "timeout" {
  value = azurerm_application_insights_standard_web_test.this.timeout
}

output "validation_rules" {
  value = azurerm_application_insights_standard_web_test.this.validation_rules
}

output "id" {
  description = "The ID of the Application Insights Standard WebTest."
  value       = azurerm_application_insights_standard_web_test.this.id
}

output "synthetic_monitor_id" {
  description = "Unique ID of this WebTest. This is typically the same value as the Name field."
  value       = azurerm_application_insights_standard_web_test.this.synthetic_monitor_id
}

