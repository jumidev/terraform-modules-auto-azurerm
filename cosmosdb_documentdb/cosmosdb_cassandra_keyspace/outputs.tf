output "name" {
  value = azurerm_cosmosdb_cassandra_keyspace.this.name
}

output "resource_group_name" {
  value = azurerm_cosmosdb_cassandra_keyspace.this.resource_group_name
}

output "account_name" {
  value = azurerm_cosmosdb_cassandra_keyspace.this.account_name
}

output "throughput" {
  value = azurerm_cosmosdb_cassandra_keyspace.this.throughput
}

output "autoscale_settings" {
  value = azurerm_cosmosdb_cassandra_keyspace.this.autoscale_settings
}

output "max_throughput" {
  description = "The maximum throughput of the Cassandra KeySpace (RU/s). Must be between '1,000' and '1,000,000'. Must be set in increments of '1,000'. Conflicts with 'throughput'. In addition to the Arguments listed above - the following Attributes are exported:"
  value       = azurerm_cosmosdb_cassandra_keyspace.this.max_throughput
}

output "id" {
  description = "the ID of the CosmosDB Cassandra KeySpace."
  value       = azurerm_cosmosdb_cassandra_keyspace.this.id
}

output "spring_cloud_app_cosmosdb_association" {
  value = var.spring_cloud_app_cosmosdb_association
}

