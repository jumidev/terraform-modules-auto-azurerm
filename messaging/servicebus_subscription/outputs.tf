output "name" {
  value = azurerm_servicebus_subscription.this.name
}

output "topic_id" {
  value = azurerm_servicebus_subscription.this.topic_id
}

output "max_delivery_count" {
  value = azurerm_servicebus_subscription.this.max_delivery_count
}

output "auto_delete_on_idle" {
  value = azurerm_servicebus_subscription.this.auto_delete_on_idle
}

output "default_message_ttl" {
  value = azurerm_servicebus_subscription.this.default_message_ttl
}

output "lock_duration" {
  value = azurerm_servicebus_subscription.this.lock_duration
}

output "dead_lettering_on_message_expiration" {
  value = azurerm_servicebus_subscription.this.dead_lettering_on_message_expiration
}

output "dead_lettering_on_filter_evaluation_error" {
  value = azurerm_servicebus_subscription.this.dead_lettering_on_filter_evaluation_error
}

output "enable_batched_operations" {
  value = azurerm_servicebus_subscription.this.enable_batched_operations
}

output "requires_session" {
  value = azurerm_servicebus_subscription.this.requires_session
}

output "forward_to" {
  value = azurerm_servicebus_subscription.this.forward_to
}

output "forward_dead_lettered_messages_to" {
  value = azurerm_servicebus_subscription.this.forward_dead_lettered_messages_to
}

output "status" {
  value = azurerm_servicebus_subscription.this.status
}

output "client_scoped_subscription_enabled" {
  value = azurerm_servicebus_subscription.this.client_scoped_subscription_enabled
}

output "client_scoped_subscription" {
  value = azurerm_servicebus_subscription.this.client_scoped_subscription
}

output "id" {
  description = "The ServiceBus Subscription ID."
  value       = azurerm_servicebus_subscription.this.id
}

