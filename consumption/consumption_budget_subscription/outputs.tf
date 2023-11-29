output "name" {
  value = azurerm_consumption_budget_subscription.this.name
}

output "subscription_id" {
  value = azurerm_consumption_budget_subscription.this.subscription_id
}

output "amount" {
  value = azurerm_consumption_budget_subscription.this.amount
}

output "time_grain" {
  value = azurerm_consumption_budget_subscription.this.time_grain
}

output "time_period" {
  value = azurerm_consumption_budget_subscription.this.time_period
}

output "notification" {
  value = azurerm_consumption_budget_subscription.this.notification
}

output "filter" {
  value = azurerm_consumption_budget_subscription.this.filter
}

output "id" {
  description = "The ID of the Subscription Consumption Budget."
  value       = azurerm_consumption_budget_subscription.this.id
}

output "etag" {
  description = "The ETag of the Subscription Consumption Budget."
  value       = azurerm_consumption_budget_subscription.this.etag
}

