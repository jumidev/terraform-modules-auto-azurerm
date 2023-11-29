output "api_management_id" {
  value = azurerm_api_management_tag.this.api_management_id
}

output "name" {
  value = azurerm_api_management_tag.this.name
}

output "display_name" {
  value = azurerm_api_management_tag.this.display_name
}

output "id" {
  description = "The ID of the API Management Tag."
  value       = azurerm_api_management_tag.this.id
}

