output "name" {
  value = azurerm_stream_analytics_cluster.this.name
}

output "resource_group_name" {
  value = azurerm_stream_analytics_cluster.this.resource_group_name
}

output "location" {
  value = azurerm_stream_analytics_cluster.this.location
}

output "streaming_capacity" {
  value = azurerm_stream_analytics_cluster.this.streaming_capacity
}

output "tags" {
  value = azurerm_stream_analytics_cluster.this.tags
}

output "id" {
  description = "The ID of the Stream Analytics."
  value       = azurerm_stream_analytics_cluster.this.id
}

