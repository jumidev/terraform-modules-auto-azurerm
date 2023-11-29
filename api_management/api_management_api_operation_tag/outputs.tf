output "api_operation_id" {
  value = azurerm_api_management_api_operation_tag.this.api_operation_id
}

output "name" {
  value = azurerm_api_management_api_operation_tag.this.name
}

output "display_name" {
  value = azurerm_api_management_api_operation_tag.this.display_name
}

output "id" {
  description = "The ID of the API Management API Operation Tag."
  value       = azurerm_api_management_api_operation_tag.this.id
}

