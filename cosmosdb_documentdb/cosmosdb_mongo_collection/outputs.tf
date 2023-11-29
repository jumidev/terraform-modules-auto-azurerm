output "name" {
  value = azurerm_cosmosdb_mongo_collection.this.name
}

output "resource_group_name" {
  value = azurerm_cosmosdb_mongo_collection.this.resource_group_name
}

output "account_name" {
  value = azurerm_cosmosdb_mongo_collection.this.account_name
}

output "database_name" {
  value = azurerm_cosmosdb_mongo_collection.this.database_name
}

output "shard_key" {
  value = azurerm_cosmosdb_mongo_collection.this.shard_key
}

output "analytical_storage_ttl" {
  value = azurerm_cosmosdb_mongo_collection.this.analytical_storage_ttl
}

output "default_ttl_seconds" {
  value = azurerm_cosmosdb_mongo_collection.this.default_ttl_seconds
}

output "index" {
  value = azurerm_cosmosdb_mongo_collection.this.index
}

output "throughput" {
  value = azurerm_cosmosdb_mongo_collection.this.throughput
}

output "autoscale_settings" {
  value = azurerm_cosmosdb_mongo_collection.this.autoscale_settings
}

output "id" {
  description = "The ID of the Cosmos DB Mongo Collection."
  value       = azurerm_cosmosdb_mongo_collection.this.id
}

output "system_indexes" {
  description = "One or more 'system_indexes' blocks."
  value       = azurerm_cosmosdb_mongo_collection.this.system_indexes
}

output "keys" {
  description = "The list of system keys which are not settable for each Cosmos DB Mongo Collection."
  value       = azurerm_cosmosdb_mongo_collection.this.keys
}

output "unique" {
  description = "Identifies whether the table contains no duplicate values."
  value       = azurerm_cosmosdb_mongo_collection.this.unique
}

