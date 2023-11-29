output "name" {
  value = azurerm_cosmosdb_postgresql_role.this.name
}

output "cluster_id" {
  value = azurerm_cosmosdb_postgresql_role.this.cluster_id
}

output "password" {
  value     = azurerm_cosmosdb_postgresql_role.this.password
  sensitive = true
}

output "id" {
  description = "The ID of the Azure Cosmos DB for PostgreSQL Role."
  value       = azurerm_cosmosdb_postgresql_role.this.id
}

