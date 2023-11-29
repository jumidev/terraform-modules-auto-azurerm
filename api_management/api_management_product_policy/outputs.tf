output "product_id" {
  value = azurerm_api_management_product_policy.this.product_id
}

output "api_management_name" {
  value = azurerm_api_management_product_policy.this.api_management_name
}

output "resource_group_name" {
  value = azurerm_api_management_product_policy.this.resource_group_name
}

output "xml_content" {
  value = azurerm_api_management_product_policy.this.xml_content
}

output "xml_link" {
  value = azurerm_api_management_product_policy.this.xml_link
}

output "id" {
  description = "The ID of the API Management Product Policy."
  value       = azurerm_api_management_product_policy.this.id
}

