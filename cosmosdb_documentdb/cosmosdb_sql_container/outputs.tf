output "name" {
  value = azurerm_cosmosdb_sql_container.this.name
}

output "resource_group_name" {
  value = azurerm_cosmosdb_sql_container.this.resource_group_name
}

output "account_name" {
  value = azurerm_cosmosdb_sql_container.this.account_name
}

output "database_name" {
  value = azurerm_cosmosdb_sql_container.this.database_name
}

output "partition_key_path" {
  value = azurerm_cosmosdb_sql_container.this.partition_key_path
}

output "partition_key_version" {
  value = azurerm_cosmosdb_sql_container.this.partition_key_version
}

output "unique_key" {
  value = azurerm_cosmosdb_sql_container.this.unique_key
}

output "throughput" {
  value = azurerm_cosmosdb_sql_container.this.throughput
}

output "autoscale_settings" {
  value = azurerm_cosmosdb_sql_container.this.autoscale_settings
}

output "indexing_policy" {
  value = azurerm_cosmosdb_sql_container.this.indexing_policy
}

output "default_ttl" {
  value = azurerm_cosmosdb_sql_container.this.default_ttl
}

output "analytical_storage_ttl" {
  value = azurerm_cosmosdb_sql_container.this.analytical_storage_ttl
}

output "conflict_resolution_policy" {
  value = azurerm_cosmosdb_sql_container.this.conflict_resolution_policy
}

output "id" {
  description = "The ID of the CosmosDB SQL Container."
  value       = azurerm_cosmosdb_sql_container.this.id
}

output "types" {
  description = "A set of spatial types of the path."
  value       = azurerm_cosmosdb_sql_container.this.types
}

