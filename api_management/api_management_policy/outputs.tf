output "api_management_id" {
  value = azurerm_api_management_policy.this.api_management_id
}

output "xml_content" {
  value = azurerm_api_management_policy.this.xml_content
}

output "xml_link" {
  value = azurerm_api_management_policy.this.xml_link
}

output "id" {
  description = "The ID of the API Management service Policy."
  value       = azurerm_api_management_policy.this.id
}

