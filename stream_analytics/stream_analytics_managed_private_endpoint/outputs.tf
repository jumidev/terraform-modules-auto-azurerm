output "name" {
  value = azurerm_stream_analytics_managed_private_endpoint.this.name
}

output "resource_group_name" {
  value = azurerm_stream_analytics_managed_private_endpoint.this.resource_group_name
}

output "stream_analytics_cluster_name" {
  value = azurerm_stream_analytics_managed_private_endpoint.this.stream_analytics_cluster_name
}

output "target_resource_id" {
  value = azurerm_stream_analytics_managed_private_endpoint.this.target_resource_id
}

output "subresource_name" {
  value = azurerm_stream_analytics_managed_private_endpoint.this.subresource_name
}

output "id" {
  description = "The ID of the Stream Analytics."
  value       = azurerm_stream_analytics_managed_private_endpoint.this.id
}

