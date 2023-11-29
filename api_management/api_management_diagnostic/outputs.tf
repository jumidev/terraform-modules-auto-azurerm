output "identifier" {
  value = azurerm_api_management_diagnostic.this.identifier
}

output "api_management_name" {
  value = azurerm_api_management_diagnostic.this.api_management_name
}

output "resource_group_name" {
  value = azurerm_api_management_diagnostic.this.resource_group_name
}

output "api_management_logger_id" {
  value = azurerm_api_management_diagnostic.this.api_management_logger_id
}

output "always_log_errors" {
  value = azurerm_api_management_diagnostic.this.always_log_errors
}

output "backend_request" {
  value = azurerm_api_management_diagnostic.this.backend_request
}

output "backend_response" {
  value = azurerm_api_management_diagnostic.this.backend_response
}

output "frontend_request" {
  value = azurerm_api_management_diagnostic.this.frontend_request
}

output "frontend_response" {
  value = azurerm_api_management_diagnostic.this.frontend_response
}

output "http_correlation_protocol" {
  value = azurerm_api_management_diagnostic.this.http_correlation_protocol
}

output "log_client_ip" {
  value = azurerm_api_management_diagnostic.this.log_client_ip
}

output "sampling_percentage" {
  value = azurerm_api_management_diagnostic.this.sampling_percentage
}

output "verbosity" {
  value = azurerm_api_management_diagnostic.this.verbosity
}

output "operation_name_format" {
  value = azurerm_api_management_diagnostic.this.operation_name_format
}

output "id" {
  description = "The ID of the API Management Diagnostic."
  value       = azurerm_api_management_diagnostic.this.id
}

