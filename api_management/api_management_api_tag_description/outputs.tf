output "api_tag_id" {
  value = azurerm_api_management_api_tag_description.this.api_tag_id
}

output "description" {
  value = azurerm_api_management_api_tag_description.this.description
}

output "external_documentation_url" {
  value = azurerm_api_management_api_tag_description.this.external_documentation_url
}

output "external_documentation_description" {
  value = azurerm_api_management_api_tag_description.this.external_documentation_description
}

output "id" {
  description = "The ID of the API Management API Schema."
  value       = azurerm_api_management_api_tag_description.this.id
}

