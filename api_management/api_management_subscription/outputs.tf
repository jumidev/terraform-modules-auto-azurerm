output "api_management_name" {
  value = azurerm_api_management_subscription.this.api_management_name
}

output "display_name" {
  value = azurerm_api_management_subscription.this.display_name
}

output "resource_group_name" {
  value = azurerm_api_management_subscription.this.resource_group_name
}

output "product_id" {
  value = azurerm_api_management_subscription.this.product_id
}

output "user_id" {
  value = azurerm_api_management_subscription.this.user_id
}

output "api_id" {
  value = azurerm_api_management_subscription.this.api_id
}

output "primary_key" {
  value = azurerm_api_management_subscription.this.primary_key
}

output "secondary_key" {
  value = azurerm_api_management_subscription.this.secondary_key
}

output "state" {
  value = azurerm_api_management_subscription.this.state
}

output "subscription_id" {
  value = azurerm_api_management_subscription.this.subscription_id
}

output "allow_tracing" {
  value = azurerm_api_management_subscription.this.allow_tracing
}

output "id" {
  description = "The ID of the API Management Subscription."
  value       = azurerm_api_management_subscription.this.id
}

