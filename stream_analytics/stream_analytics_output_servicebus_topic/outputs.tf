output "name" {
  value = azurerm_stream_analytics_output_servicebus_topic.this.name
}

output "resource_group_name" {
  value = azurerm_stream_analytics_output_servicebus_topic.this.resource_group_name
}

output "stream_analytics_job_name" {
  value = azurerm_stream_analytics_output_servicebus_topic.this.stream_analytics_job_name
}

output "topic_name" {
  value = azurerm_stream_analytics_output_servicebus_topic.this.topic_name
}

output "servicebus_namespace" {
  value = azurerm_stream_analytics_output_servicebus_topic.this.servicebus_namespace
}

output "shared_access_policy_key" {
  value = azurerm_stream_analytics_output_servicebus_topic.this.shared_access_policy_key
}

output "shared_access_policy_name" {
  value = azurerm_stream_analytics_output_servicebus_topic.this.shared_access_policy_name
}

output "serialization" {
  value = azurerm_stream_analytics_output_servicebus_topic.this.serialization
}

output "property_columns" {
  value = azurerm_stream_analytics_output_servicebus_topic.this.property_columns
}

output "authentication_mode" {
  value = azurerm_stream_analytics_output_servicebus_topic.this.authentication_mode
}

output "system_property_columns" {
  value = azurerm_stream_analytics_output_servicebus_topic.this.system_property_columns
}

output "id" {
  description = "The ID of the Stream Analytics Output ServiceBus Topic."
  value       = azurerm_stream_analytics_output_servicebus_topic.this.id
}

