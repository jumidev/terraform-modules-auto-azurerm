output "name" {
  value = azurerm_cosmosdb_postgresql_coordinator_configuration.this.name
}

output "cluster_id" {
  value = azurerm_cosmosdb_postgresql_coordinator_configuration.this.cluster_id
}

output "value" {
  value = azurerm_cosmosdb_postgresql_coordinator_configuration.this.value
}

output "id" {
  description = "The ID of the Coordinator Configuration on Azure Cosmos DB for PostgreSQL Cluster."
  value       = azurerm_cosmosdb_postgresql_coordinator_configuration.this.id
}

