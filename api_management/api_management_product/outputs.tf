output "api_management_name" {
  value = azurerm_api_management_product.this.api_management_name
}

output "approval_required" {
  value = azurerm_api_management_product.this.approval_required
}

output "display_name" {
  value = azurerm_api_management_product.this.display_name
}

output "product_id" {
  value = azurerm_api_management_product.this.product_id
}

output "published" {
  value = azurerm_api_management_product.this.published
}

output "resource_group_name" {
  value = azurerm_api_management_product.this.resource_group_name
}

output "subscription_required" {
  value = azurerm_api_management_product.this.subscription_required
}

output "description" {
  value = azurerm_api_management_product.this.description
}

output "subscriptions_limit" {
  value = azurerm_api_management_product.this.subscriptions_limit
}

output "terms" {
  value = azurerm_api_management_product.this.terms
}

output "id" {
  description = "The ID of the API Management Product."
  value       = azurerm_api_management_product.this.id
}

