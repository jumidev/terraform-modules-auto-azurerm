output "name" {
  value = azurerm_stream_analytics_output_eventhub.this.name
}

output "resource_group_name" {
  value = azurerm_stream_analytics_output_eventhub.this.resource_group_name
}

output "stream_analytics_job_name" {
  value = azurerm_stream_analytics_output_eventhub.this.stream_analytics_job_name
}

output "eventhub_name" {
  value = azurerm_stream_analytics_output_eventhub.this.eventhub_name
}

output "servicebus_namespace" {
  value = azurerm_stream_analytics_output_eventhub.this.servicebus_namespace
}

output "shared_access_policy_key" {
  value = azurerm_stream_analytics_output_eventhub.this.shared_access_policy_key
}

output "shared_access_policy_name" {
  value = azurerm_stream_analytics_output_eventhub.this.shared_access_policy_name
}

output "serialization" {
  value = azurerm_stream_analytics_output_eventhub.this.serialization
}

output "property_columns" {
  value = azurerm_stream_analytics_output_eventhub.this.property_columns
}

output "authentication_mode" {
  value = azurerm_stream_analytics_output_eventhub.this.authentication_mode
}

output "partition_key" {
  value = azurerm_stream_analytics_output_eventhub.this.partition_key
}

output "id" {
  description = "The ID of the Stream Analytics Output EventHub."
  value       = azurerm_stream_analytics_output_eventhub.this.id
}

