output "api_name" {
  value = azurerm_api_management_product_api.this.api_name
}

output "api_management_name" {
  value = azurerm_api_management_product_api.this.api_management_name
}

output "product_id" {
  value = azurerm_api_management_product_api.this.product_id
}

output "resource_group_name" {
  value = azurerm_api_management_product_api.this.resource_group_name
}

output "id" {
  description = "The ID of the API Management Product API."
  value       = azurerm_api_management_product_api.this.id
}

