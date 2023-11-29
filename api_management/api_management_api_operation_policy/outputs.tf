output "api_name" {
  value = azurerm_api_management_api_operation_policy.this.api_name
}

output "api_management_name" {
  value = azurerm_api_management_api_operation_policy.this.api_management_name
}

output "resource_group_name" {
  value = azurerm_api_management_api_operation_policy.this.resource_group_name
}

output "operation_id" {
  value = azurerm_api_management_api_operation_policy.this.operation_id
}

output "xml_content" {
  value = azurerm_api_management_api_operation_policy.this.xml_content
}

output "xml_link" {
  value = azurerm_api_management_api_operation_policy.this.xml_link
}

output "id" {
  description = "The ID of the API Management API Operation Policy."
  value       = azurerm_api_management_api_operation_policy.this.id
}

