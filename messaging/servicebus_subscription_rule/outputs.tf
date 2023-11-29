output "name" {
  value = azurerm_servicebus_subscription_rule.this.name
}

output "subscription_id" {
  value = azurerm_servicebus_subscription_rule.this.subscription_id
}

output "filter_type" {
  value = azurerm_servicebus_subscription_rule.this.filter_type
}

output "sql_filter" {
  value = azurerm_servicebus_subscription_rule.this.sql_filter
}

output "correlation_filter" {
  value = azurerm_servicebus_subscription_rule.this.correlation_filter
}

output "action" {
  value = azurerm_servicebus_subscription_rule.this.action
}

output "id" {
  description = "The ServiceBus Subscription Rule ID."
  value       = azurerm_servicebus_subscription_rule.this.id
}

