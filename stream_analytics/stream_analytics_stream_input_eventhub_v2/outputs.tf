output "name" {
  value = azurerm_stream_analytics_stream_input_eventhub_v2.this.name
}

output "stream_analytics_job_id" {
  value = azurerm_stream_analytics_stream_input_eventhub_v2.this.stream_analytics_job_id
}

output "eventhub_name" {
  value = azurerm_stream_analytics_stream_input_eventhub_v2.this.eventhub_name
}

output "servicebus_namespace" {
  value = azurerm_stream_analytics_stream_input_eventhub_v2.this.servicebus_namespace
}

output "serialization" {
  value = azurerm_stream_analytics_stream_input_eventhub_v2.this.serialization
}

output "partition_key" {
  value = azurerm_stream_analytics_stream_input_eventhub_v2.this.partition_key
}

output "authentication_mode" {
  value = azurerm_stream_analytics_stream_input_eventhub_v2.this.authentication_mode
}

output "eventhub_consumer_group_name" {
  value = azurerm_stream_analytics_stream_input_eventhub_v2.this.eventhub_consumer_group_name
}

output "shared_access_policy_key" {
  value = azurerm_stream_analytics_stream_input_eventhub_v2.this.shared_access_policy_key
}

output "shared_access_policy_name" {
  value = azurerm_stream_analytics_stream_input_eventhub_v2.this.shared_access_policy_name
}

output "id" {
  description = "The ID of the Stream Analytics Stream Input EventHub V2."
  value       = azurerm_stream_analytics_stream_input_eventhub_v2.this.id
}

