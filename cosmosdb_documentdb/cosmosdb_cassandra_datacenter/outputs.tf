output "name" {
  value = azurerm_cosmosdb_cassandra_datacenter.this.name
}

output "location" {
  value = azurerm_cosmosdb_cassandra_datacenter.this.location
}

output "cassandra_cluster_id" {
  value = azurerm_cosmosdb_cassandra_datacenter.this.cassandra_cluster_id
}

output "delegated_management_subnet_id" {
  value = azurerm_cosmosdb_cassandra_datacenter.this.delegated_management_subnet_id
}

output "node_count" {
  value = azurerm_cosmosdb_cassandra_datacenter.this.node_count
}

output "backup_storage_customer_key_uri" {
  value = azurerm_cosmosdb_cassandra_datacenter.this.backup_storage_customer_key_uri
}

output "base64_encoded_yaml_fragment" {
  value = azurerm_cosmosdb_cassandra_datacenter.this.base64_encoded_yaml_fragment
}

output "disk_sku" {
  value = azurerm_cosmosdb_cassandra_datacenter.this.disk_sku
}

output "managed_disk_customer_key_uri" {
  value = azurerm_cosmosdb_cassandra_datacenter.this.managed_disk_customer_key_uri
}

output "sku_name" {
  value = azurerm_cosmosdb_cassandra_datacenter.this.sku_name
}

output "disk_count" {
  value = azurerm_cosmosdb_cassandra_datacenter.this.disk_count
}

output "availability_zones_enabled" {
  value = azurerm_cosmosdb_cassandra_datacenter.this.availability_zones_enabled
}

output "id" {
  description = "The ID of the Cassandra Datacenter."
  value       = azurerm_cosmosdb_cassandra_datacenter.this.id
}

output "seed_node_ip_addresses" {
  description = "A list of IP Address for the seed nodes in this Cassandra Datacenter."
  value       = azurerm_cosmosdb_cassandra_datacenter.this.seed_node_ip_addresses
}

