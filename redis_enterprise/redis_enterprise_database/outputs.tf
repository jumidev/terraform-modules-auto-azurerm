output "name" {
  value = azurerm_redis_enterprise_database.this.name
}

output "resource_group_name" {
  value = azurerm_redis_enterprise_database.this.resource_group_name
}

output "cluster_id" {
  value = azurerm_redis_enterprise_database.this.cluster_id
}

output "client_protocol" {
  value = azurerm_redis_enterprise_database.this.client_protocol
}

output "clustering_policy" {
  value = azurerm_redis_enterprise_database.this.clustering_policy
}

output "eviction_policy" {
  value = azurerm_redis_enterprise_database.this.eviction_policy
}

output "module" {
  value = azurerm_redis_enterprise_database.this.module
}

output "linked_database_id" {
  value = azurerm_redis_enterprise_database.this.linked_database_id
}

output "linked_database_group_nickname" {
  value = azurerm_redis_enterprise_database.this.linked_database_group_nickname
}

output "port" {
  value = azurerm_redis_enterprise_database.this.port
}

output "id" {
  description = "The ID of the Redis Enterprise Database."
  value       = azurerm_redis_enterprise_database.this.id
}

output "primary_access_key" {
  description = "The Primary Access Key for the Redis Enterprise Database Instance."
  value       = azurerm_redis_enterprise_database.this.primary_access_key
}

output "secondary_access_key" {
  description = "The Secondary Access Key for the Redis Enterprise Database Instance."
  value       = azurerm_redis_enterprise_database.this.secondary_access_key
}

