output "api_management_name" {
  value = azurerm_api_management_product_tag.this.api_management_name
}

output "api_management_product_id" {
  value = azurerm_api_management_product_tag.this.api_management_product_id
}

output "resource_group_name" {
  value = azurerm_api_management_product_tag.this.resource_group_name
}

output "name" {
  value = azurerm_api_management_product_tag.this.name
}

output "id" {
  description = "The ID of the API Management Product."
  value       = azurerm_api_management_product_tag.this.id
}

