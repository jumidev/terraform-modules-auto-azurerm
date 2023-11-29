output "name" {
  value = azurerm_api_management_api_release.this.name
}

output "api_id" {
  value = azurerm_api_management_api_release.this.api_id
}

output "notes" {
  value = azurerm_api_management_api_release.this.notes
}

output "id" {
  description = "The ID of the API Management API Release."
  value       = azurerm_api_management_api_release.this.id
}

