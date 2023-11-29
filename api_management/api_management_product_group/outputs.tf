output "product_id" {
  value = azurerm_api_management_product_group.this.product_id
}

output "group_name" {
  value = azurerm_api_management_product_group.this.group_name
}

output "api_management_name" {
  value = azurerm_api_management_product_group.this.api_management_name
}

output "resource_group_name" {
  value = azurerm_api_management_product_group.this.resource_group_name
}

output "id" {
  description = "The ID of the API Management Product Group."
  value       = azurerm_api_management_product_group.this.id
}

