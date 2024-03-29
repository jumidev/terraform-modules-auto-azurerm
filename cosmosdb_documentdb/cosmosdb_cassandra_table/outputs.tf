output "name" {
  value = azurerm_cosmosdb_cassandra_table.this.name
}

output "cassandra_keyspace_id" {
  value = azurerm_cosmosdb_cassandra_table.this.cassandra_keyspace_id
}

output "schema" {
  value = azurerm_cosmosdb_cassandra_table.this.schema
}

output "throughput" {
  value = azurerm_cosmosdb_cassandra_table.this.throughput
}

output "default_ttl" {
  value = azurerm_cosmosdb_cassandra_table.this.default_ttl
}

output "analytical_storage_ttl" {
  value = azurerm_cosmosdb_cassandra_table.this.analytical_storage_ttl
}

output "autoscale_settings" {
  value = azurerm_cosmosdb_cassandra_table.this.autoscale_settings
}

output "name" {
  description = "Name of the column to partition by. In addition to the Arguments listed above - the following Attributes are exported:"
  value       = azurerm_cosmosdb_cassandra_table.this.name
}

output "id" {
  description = "the ID of the CosmosDB Cassandra Table."
  value       = azurerm_cosmosdb_cassandra_table.this.id
}

