output "name" {
  value = azurerm_cosmosdb_postgresql_cluster.this.name
}

output "resource_group_name" {
  value = azurerm_cosmosdb_postgresql_cluster.this.resource_group_name
}

output "location" {
  value = azurerm_cosmosdb_postgresql_cluster.this.location
}

output "node_count" {
  value = azurerm_cosmosdb_postgresql_cluster.this.node_count
}

output "administrator_login_password" {
  value     = random_string.administrator_login_password.result
  sensitive = true
}

output "citus_version" {
  value = azurerm_cosmosdb_postgresql_cluster.this.citus_version
}

output "coordinator_public_ip_access_enabled" {
  value = azurerm_cosmosdb_postgresql_cluster.this.coordinator_public_ip_access_enabled
}

output "coordinator_server_edition" {
  value = azurerm_cosmosdb_postgresql_cluster.this.coordinator_server_edition
}

output "coordinator_storage_quota_in_mb" {
  value = azurerm_cosmosdb_postgresql_cluster.this.coordinator_storage_quota_in_mb
}

output "coordinator_vcore_count" {
  value = azurerm_cosmosdb_postgresql_cluster.this.coordinator_vcore_count
}

output "ha_enabled" {
  value = azurerm_cosmosdb_postgresql_cluster.this.ha_enabled
}

output "maintenance_window" {
  value = azurerm_cosmosdb_postgresql_cluster.this.maintenance_window
}

output "node_public_ip_access_enabled" {
  value = azurerm_cosmosdb_postgresql_cluster.this.node_public_ip_access_enabled
}

output "node_server_edition" {
  value = azurerm_cosmosdb_postgresql_cluster.this.node_server_edition
}

output "node_storage_quota_in_mb" {
  value = azurerm_cosmosdb_postgresql_cluster.this.node_storage_quota_in_mb
}

output "node_vcores" {
  value = azurerm_cosmosdb_postgresql_cluster.this.node_vcores
}

output "point_in_time_in_utc" {
  value = azurerm_cosmosdb_postgresql_cluster.this.point_in_time_in_utc
}

output "preferred_primary_zone" {
  value = azurerm_cosmosdb_postgresql_cluster.this.preferred_primary_zone
}

output "shards_on_coordinator_enabled" {
  value = azurerm_cosmosdb_postgresql_cluster.this.shards_on_coordinator_enabled
}

output "source_location" {
  value = azurerm_cosmosdb_postgresql_cluster.this.source_location
}

output "source_resource_id" {
  value = azurerm_cosmosdb_postgresql_cluster.this.source_resource_id
}

output "sql_version" {
  value = azurerm_cosmosdb_postgresql_cluster.this.sql_version
}

output "tags" {
  value = azurerm_cosmosdb_postgresql_cluster.this.tags
}

output "start_minute" {
  description = "The start minute for maintenance window. Defaults to '0'. In addition to the Arguments listed above - the following Attributes are exported:"
  value       = azurerm_cosmosdb_postgresql_cluster.this.start_minute
}

output "id" {
  description = "The ID of the Azure Cosmos DB for PostgreSQL Cluster."
  value       = azurerm_cosmosdb_postgresql_cluster.this.id
}

output "earliest_restore_time" {
  description = "The earliest restore point time (ISO8601 format) for the Azure Cosmos DB for PostgreSQL Cluster."
  value       = azurerm_cosmosdb_postgresql_cluster.this.earliest_restore_time
}

output "servers" {
  description = "A 'servers' block."
  value       = azurerm_cosmosdb_postgresql_cluster.this.servers
}

output "fqdn" {
  description = "The Fully Qualified Domain Name of the server."
  value       = azurerm_cosmosdb_postgresql_cluster.this.fqdn
}

