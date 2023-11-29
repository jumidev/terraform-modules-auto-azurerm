output "gateway_id" {
  value = azurerm_api_management_gateway_api.this.gateway_id
}

output "api_id" {
  value = azurerm_api_management_gateway_api.this.api_id
}

output "id" {
  description = "The ID of the API Management Gateway API."
  value       = azurerm_api_management_gateway_api.this.id
}

