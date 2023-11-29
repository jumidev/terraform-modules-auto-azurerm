output "name" {
  value = azurerm_application_insights_api_key.this.name
}

output "application_insights_id" {
  value = azurerm_application_insights_api_key.this.application_insights_id
}

output "read_permissions" {
  value = azurerm_application_insights_api_key.this.read_permissions
}

output "write_permissions" {
  value = azurerm_application_insights_api_key.this.write_permissions
}

output "id" {
  description = "The ID of the Application Insights API key."
  value       = azurerm_application_insights_api_key.this.id
}

output "api_key" {
  description = "The API Key secret (Sensitive)."
  value       = azurerm_application_insights_api_key.this.api_key
}

