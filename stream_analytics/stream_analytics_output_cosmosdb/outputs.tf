output "name" {
  value = azurerm_stream_analytics_output_cosmosdb.this.name
}

output "stream_analytics_job_id" {
  value = azurerm_stream_analytics_output_cosmosdb.this.stream_analytics_job_id
}

output "cosmosdb_account_key" {
  value = azurerm_stream_analytics_output_cosmosdb.this.cosmosdb_account_key
}

output "cosmosdb_sql_database_id" {
  value = azurerm_stream_analytics_output_cosmosdb.this.cosmosdb_sql_database_id
}

output "container_name" {
  value = azurerm_stream_analytics_output_cosmosdb.this.container_name
}

output "document_id" {
  value = azurerm_stream_analytics_output_cosmosdb.this.document_id
}

output "partition_key" {
  value = azurerm_stream_analytics_output_cosmosdb.this.partition_key
}

output "id" {
  description = "The ID of the Stream Analytics Output for CosmosDB."
  value       = azurerm_stream_analytics_output_cosmosdb.this.id
}

