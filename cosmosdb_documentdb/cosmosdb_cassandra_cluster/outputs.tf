output "name" {
  value = azurerm_cosmosdb_cassandra_cluster.this.name
}

output "resource_group_name" {
  value = azurerm_cosmosdb_cassandra_cluster.this.resource_group_name
}

output "location" {
  value = azurerm_cosmosdb_cassandra_cluster.this.location
}

output "delegated_management_subnet_id" {
  value = azurerm_cosmosdb_cassandra_cluster.this.delegated_management_subnet_id
}

output "default_admin_password" {
  value     = random_string.default_admin_password.result
  sensitive = true
}

output "authentication_method" {
  value = azurerm_cosmosdb_cassandra_cluster.this.authentication_method
}

output "client_certificate_pems" {
  value = azurerm_cosmosdb_cassandra_cluster.this.client_certificate_pems
}

output "external_gossip_certificate_pems" {
  value = azurerm_cosmosdb_cassandra_cluster.this.external_gossip_certificate_pems
}

output "external_seed_node_ip_addresses" {
  value = azurerm_cosmosdb_cassandra_cluster.this.external_seed_node_ip_addresses
}

output "hours_between_backups" {
  value = azurerm_cosmosdb_cassandra_cluster.this.hours_between_backups
}

output "identity" {
  value = azurerm_cosmosdb_cassandra_cluster.this.identity
}

output "repair_enabled" {
  value = azurerm_cosmosdb_cassandra_cluster.this.repair_enabled
}

output "version" {
  value = azurerm_cosmosdb_cassandra_cluster.this.version
}

output "tags" {
  value = azurerm_cosmosdb_cassandra_cluster.this.tags
}

output "id" {
  description = "The ID of the Cassandra Cluster."
  value       = azurerm_cosmosdb_cassandra_cluster.this.id
}

