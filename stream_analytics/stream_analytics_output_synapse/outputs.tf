output "name" {
  value = azurerm_stream_analytics_output_synapse.this.name
}

output "resource_group_name" {
  value = azurerm_stream_analytics_output_synapse.this.resource_group_name
}

output "stream_analytics_job_name" {
  value = azurerm_stream_analytics_output_synapse.this.stream_analytics_job_name
}

output "server" {
  value = azurerm_stream_analytics_output_synapse.this.server
}

output "database" {
  value = azurerm_stream_analytics_output_synapse.this.database
}

output "user" {
  value = azurerm_stream_analytics_output_synapse.this.user
}

output "password" {
  value     = azurerm_stream_analytics_output_synapse.this.password
  sensitive = true
}

output "table" {
  value = azurerm_stream_analytics_output_synapse.this.table
}

output "id" {
  description = "The ID of the Stream Analytics Output to an Azure Synapse Analytics Workspace."
  value       = azurerm_stream_analytics_output_synapse.this.id
}

