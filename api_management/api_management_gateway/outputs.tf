output "name" {
  value = azurerm_api_management_gateway.this.name
}

output "api_management_id" {
  value = azurerm_api_management_gateway.this.api_management_id
}

output "location_data" {
  value = azurerm_api_management_gateway.this.location_data
}

output "description" {
  value = azurerm_api_management_gateway.this.description
}

output "id" {
  description = "The ID of the API Management Gateway."
  value       = azurerm_api_management_gateway.this.id
}

