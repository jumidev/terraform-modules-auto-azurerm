output "operation_id" {
  value = azurerm_api_management_api_operation.this.operation_id
}

output "api_name" {
  value = azurerm_api_management_api_operation.this.api_name
}

output "api_management_name" {
  value = azurerm_api_management_api_operation.this.api_management_name
}

output "resource_group_name" {
  value = azurerm_api_management_api_operation.this.resource_group_name
}

output "display_name" {
  value = azurerm_api_management_api_operation.this.display_name
}

output "method" {
  value = azurerm_api_management_api_operation.this.method
}

output "url_template" {
  value = azurerm_api_management_api_operation.this.url_template
}

output "description" {
  value = azurerm_api_management_api_operation.this.description
}

output "request" {
  value = azurerm_api_management_api_operation.this.request
}

output "response" {
  value = azurerm_api_management_api_operation.this.response
}

output "template_parameter" {
  value = azurerm_api_management_api_operation.this.template_parameter
}

output "id" {
  description = "The ID of the API Management API Operation."
  value       = azurerm_api_management_api_operation.this.id
}

