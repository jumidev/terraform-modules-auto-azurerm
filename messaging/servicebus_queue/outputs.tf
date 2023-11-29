output "name" {
  value = azurerm_servicebus_queue.this.name
}

output "namespace_id" {
  value = azurerm_servicebus_queue.this.namespace_id
}

output "lock_duration" {
  value = azurerm_servicebus_queue.this.lock_duration
}

output "max_message_size_in_kilobytes" {
  value = azurerm_servicebus_queue.this.max_message_size_in_kilobytes
}

output "max_size_in_megabytes" {
  value = azurerm_servicebus_queue.this.max_size_in_megabytes
}

output "requires_duplicate_detection" {
  value = azurerm_servicebus_queue.this.requires_duplicate_detection
}

output "requires_session" {
  value = azurerm_servicebus_queue.this.requires_session
}

output "default_message_ttl" {
  value = azurerm_servicebus_queue.this.default_message_ttl
}

output "dead_lettering_on_message_expiration" {
  value = azurerm_servicebus_queue.this.dead_lettering_on_message_expiration
}

output "duplicate_detection_history_time_window" {
  value = azurerm_servicebus_queue.this.duplicate_detection_history_time_window
}

output "max_delivery_count" {
  value = azurerm_servicebus_queue.this.max_delivery_count
}

output "status" {
  value = azurerm_servicebus_queue.this.status
}

output "enable_batched_operations" {
  value = azurerm_servicebus_queue.this.enable_batched_operations
}

output "auto_delete_on_idle" {
  value = azurerm_servicebus_queue.this.auto_delete_on_idle
}

output "enable_partitioning" {
  value = azurerm_servicebus_queue.this.enable_partitioning
}

output "enable_express" {
  value = azurerm_servicebus_queue.this.enable_express
}

output "forward_to" {
  value = azurerm_servicebus_queue.this.forward_to
}

output "forward_dead_lettered_messages_to" {
  value = azurerm_servicebus_queue.this.forward_dead_lettered_messages_to
}

output "id" {
  description = "The ServiceBus Queue ID."
  value       = azurerm_servicebus_queue.this.id
}

