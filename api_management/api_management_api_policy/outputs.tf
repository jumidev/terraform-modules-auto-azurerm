output "api_name" {
  value = azurerm_api_management_api_policy.this.api_name
}

output "api_management_name" {
  value = azurerm_api_management_api_policy.this.api_management_name
}

output "resource_group_name" {
  value = azurerm_api_management_api_policy.this.resource_group_name
}

output "xml_content" {
  value = azurerm_api_management_api_policy.this.xml_content
}

output "xml_link" {
  value = azurerm_api_management_api_policy.this.xml_link
}

output "id" {
  description = "The ID of the API Management API Policy."
  value       = azurerm_api_management_api_policy.this.id
}

