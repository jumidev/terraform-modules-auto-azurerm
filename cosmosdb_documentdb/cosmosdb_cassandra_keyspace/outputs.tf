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

output "id" {
  description = "the ID of the CosmosDB Cassandra KeySpace."
  value       = azurerm_cosmosdb_cassandra_keyspace.this.id
}

output "spring_cloud_app_cosmosdb_association" {
  value = var.spring_cloud_app_cosmosdb_association
}

