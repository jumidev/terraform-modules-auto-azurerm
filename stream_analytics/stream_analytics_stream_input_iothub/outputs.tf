output "name" {
  value = azurerm_stream_analytics_stream_input_iothub.this.name
}

output "resource_group_name" {
  value = azurerm_stream_analytics_stream_input_iothub.this.resource_group_name
}

output "stream_analytics_job_name" {
  value = azurerm_stream_analytics_stream_input_iothub.this.stream_analytics_job_name
}

output "eventhub_consumer_group_name" {
  value = azurerm_stream_analytics_stream_input_iothub.this.eventhub_consumer_group_name
}

output "endpoint" {
  value = azurerm_stream_analytics_stream_input_iothub.this.endpoint
}

output "iothub_namespace" {
  value = azurerm_stream_analytics_stream_input_iothub.this.iothub_namespace
}

output "serialization" {
  value = azurerm_stream_analytics_stream_input_iothub.this.serialization
}

output "shared_access_policy_key" {
  value = azurerm_stream_analytics_stream_input_iothub.this.shared_access_policy_key
}

output "shared_access_policy_name" {
  value = azurerm_stream_analytics_stream_input_iothub.this.shared_access_policy_name
}

output "id" {
  description = "The ID of the Stream Analytics Stream Input IoTHub."
  value       = azurerm_stream_analytics_stream_input_iothub.this.id
}

