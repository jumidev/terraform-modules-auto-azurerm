output "name" {
  value = azurerm_stream_analytics_stream_input_eventhub.this.name
}

output "resource_group_name" {
  value = azurerm_stream_analytics_stream_input_eventhub.this.resource_group_name
}

output "stream_analytics_job_name" {
  value = azurerm_stream_analytics_stream_input_eventhub.this.stream_analytics_job_name
}

output "eventhub_name" {
  value = azurerm_stream_analytics_stream_input_eventhub.this.eventhub_name
}

output "servicebus_namespace" {
  value = azurerm_stream_analytics_stream_input_eventhub.this.servicebus_namespace
}

output "serialization" {
  value = azurerm_stream_analytics_stream_input_eventhub.this.serialization
}

output "partition_key" {
  value = azurerm_stream_analytics_stream_input_eventhub.this.partition_key
}

output "authentication_mode" {
  value = azurerm_stream_analytics_stream_input_eventhub.this.authentication_mode
}

output "eventhub_consumer_group_name" {
  value = azurerm_stream_analytics_stream_input_eventhub.this.eventhub_consumer_group_name
}

output "shared_access_policy_key" {
  value = azurerm_stream_analytics_stream_input_eventhub.this.shared_access_policy_key
}

output "shared_access_policy_name" {
  value = azurerm_stream_analytics_stream_input_eventhub.this.shared_access_policy_name
}

output "id" {
  description = "The ID of the Stream Analytics Stream Input EventHub."
  value       = azurerm_stream_analytics_stream_input_eventhub.this.id
}

