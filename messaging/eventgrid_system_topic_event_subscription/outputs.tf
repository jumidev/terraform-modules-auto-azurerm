output "name" {
  value = azurerm_eventgrid_system_topic_event_subscription.this.name
}

output "system_topic" {
  value = azurerm_eventgrid_system_topic_event_subscription.this.system_topic
}

output "resource_group_name" {
  value = azurerm_eventgrid_system_topic_event_subscription.this.resource_group_name
}

output "expiration_time_utc" {
  value = azurerm_eventgrid_system_topic_event_subscription.this.expiration_time_utc
}

output "event_delivery_schema" {
  value = azurerm_eventgrid_system_topic_event_subscription.this.event_delivery_schema
}

output "azure_function_endpoint" {
  value = azurerm_eventgrid_system_topic_event_subscription.this.azure_function_endpoint
}

output "eventhub_endpoint_id" {
  value = azurerm_eventgrid_system_topic_event_subscription.this.eventhub_endpoint_id
}

output "hybrid_connection_endpoint_id" {
  value = azurerm_eventgrid_system_topic_event_subscription.this.hybrid_connection_endpoint_id
}

output "service_bus_queue_endpoint_id" {
  value = azurerm_eventgrid_system_topic_event_subscription.this.service_bus_queue_endpoint_id
}

output "service_bus_topic_endpoint_id" {
  value = azurerm_eventgrid_system_topic_event_subscription.this.service_bus_topic_endpoint_id
}

output "storage_queue_endpoint" {
  value = azurerm_eventgrid_system_topic_event_subscription.this.storage_queue_endpoint
}

output "webhook_endpoint" {
  value = azurerm_eventgrid_system_topic_event_subscription.this.webhook_endpoint
}

output "included_event_types" {
  value = azurerm_eventgrid_system_topic_event_subscription.this.included_event_types
}

output "subject_filter" {
  value = azurerm_eventgrid_system_topic_event_subscription.this.subject_filter
}

output "advanced_filter" {
  value = azurerm_eventgrid_system_topic_event_subscription.this.advanced_filter
}

output "delivery_identity" {
  value = azurerm_eventgrid_system_topic_event_subscription.this.delivery_identity
}

output "delivery_property" {
  value = azurerm_eventgrid_system_topic_event_subscription.this.delivery_property
}

output "dead_letter_identity" {
  value = azurerm_eventgrid_system_topic_event_subscription.this.dead_letter_identity
}

output "storage_blob_dead_letter_destination" {
  value = azurerm_eventgrid_system_topic_event_subscription.this.storage_blob_dead_letter_destination
}

output "retry_policy" {
  value = azurerm_eventgrid_system_topic_event_subscription.this.retry_policy
}

output "labels" {
  value = azurerm_eventgrid_system_topic_event_subscription.this.labels
}

output "advanced_filtering_on_arrays_enabled" {
  value = azurerm_eventgrid_system_topic_event_subscription.this.advanced_filtering_on_arrays_enabled
}

output "id" {
  description = "The ID of the EventGrid System Topic."
  value       = azurerm_eventgrid_system_topic_event_subscription.this.id
}

