output "api_id" {
  value = azurerm_api_management_api_tag.this.api_id
}

output "name" {
  value = azurerm_api_management_api_tag.this.name
}

output "id" {
  description = "The ID of the API Management API Tag."
  value       = azurerm_api_management_api_tag.this.id
}

