output "name" {
  value = azurerm_servicebus_topic.this.name
}

output "namespace_id" {
  value = azurerm_servicebus_topic.this.namespace_id
}

output "status" {
  value = azurerm_servicebus_topic.this.status
}

output "auto_delete_on_idle" {
  value = azurerm_servicebus_topic.this.auto_delete_on_idle
}

output "default_message_ttl" {
  value = azurerm_servicebus_topic.this.default_message_ttl
}

output "duplicate_detection_history_time_window" {
  value = azurerm_servicebus_topic.this.duplicate_detection_history_time_window
}

output "enable_batched_operations" {
  value = azurerm_servicebus_topic.this.enable_batched_operations
}

output "enable_express" {
  value = azurerm_servicebus_topic.this.enable_express
}

output "enable_partitioning" {
  value = azurerm_servicebus_topic.this.enable_partitioning
}

output "max_message_size_in_kilobytes" {
  value = azurerm_servicebus_topic.this.max_message_size_in_kilobytes
}

output "max_size_in_megabytes" {
  value = azurerm_servicebus_topic.this.max_size_in_megabytes
}

output "requires_duplicate_detection" {
  value = azurerm_servicebus_topic.this.requires_duplicate_detection
}

output "support_ordering" {
  value = azurerm_servicebus_topic.this.support_ordering
}

output "id" {
  description = "The ServiceBus Topic ID."
  value       = azurerm_servicebus_topic.this.id
}

