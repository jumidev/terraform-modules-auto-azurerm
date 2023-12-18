output "name" {
  value = azurerm_cosmosdb_gremlin_graph.this.name
}

output "resource_group_name" {
  value = azurerm_cosmosdb_gremlin_graph.this.resource_group_name
}

output "account_name" {
  value = azurerm_cosmosdb_gremlin_graph.this.account_name
}

output "database_name" {
  value = azurerm_cosmosdb_gremlin_graph.this.database_name
}

output "partition_key_path" {
  value = azurerm_cosmosdb_gremlin_graph.this.partition_key_path
}

output "partition_key_version" {
  value = azurerm_cosmosdb_gremlin_graph.this.partition_key_version
}

output "throughput" {
  value = azurerm_cosmosdb_gremlin_graph.this.throughput
}

output "analytical_storage_ttl" {
  value = azurerm_cosmosdb_gremlin_graph.this.analytical_storage_ttl
}

output "default_ttl" {
  value = azurerm_cosmosdb_gremlin_graph.this.default_ttl
}

output "autoscale_settings" {
  value = azurerm_cosmosdb_gremlin_graph.this.autoscale_settings
}

output "index_policy" {
  value = azurerm_cosmosdb_gremlin_graph.this.index_policy
}

output "conflict_resolution_policy" {
  value = azurerm_cosmosdb_gremlin_graph.this.conflict_resolution_policy
}

output "unique_key" {
  value = azurerm_cosmosdb_gremlin_graph.this.unique_key
}

output "id" {
  description = "The ID of the CosmosDB Gremlin Graph."
  value       = azurerm_cosmosdb_gremlin_graph.this.id
}

output "spring_cloud_app_cosmosdb_association" {
  value = var.spring_cloud_app_cosmosdb_association
}

