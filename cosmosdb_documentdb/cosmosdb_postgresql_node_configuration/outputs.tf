output "name" {
  value = azurerm_cosmosdb_postgresql_node_configuration.this.name
}

output "cluster_id" {
  value = azurerm_cosmosdb_postgresql_node_configuration.this.cluster_id
}

output "value" {
  value = azurerm_cosmosdb_postgresql_node_configuration.this.value
}

output "id" {
  description = "The ID of the Node Configuration on Azure Cosmos DB for PostgreSQL Cluster."
  value       = azurerm_cosmosdb_postgresql_node_configuration.this.id
}

