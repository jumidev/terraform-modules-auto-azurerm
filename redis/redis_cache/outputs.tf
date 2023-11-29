output "name" {
  value = azurerm_redis_cache.this.name
}

output "location" {
  value = azurerm_redis_cache.this.location
}

output "resource_group_name" {
  value = azurerm_redis_cache.this.resource_group_name
}

output "capacity" {
  value = azurerm_redis_cache.this.capacity
}

output "family" {
  value = azurerm_redis_cache.this.family
}

output "sku_name" {
  value = azurerm_redis_cache.this.sku_name
}

output "enable_non_ssl_port" {
  value = azurerm_redis_cache.this.enable_non_ssl_port
}

output "identity" {
  value = azurerm_redis_cache.this.identity
}

output "minimum_tls_version" {
  value = azurerm_redis_cache.this.minimum_tls_version
}

output "patch_schedule" {
  value = azurerm_redis_cache.this.patch_schedule
}

output "private_static_ip_address" {
  value = azurerm_redis_cache.this.private_static_ip_address
}

output "public_network_access_enabled" {
  value = azurerm_redis_cache.this.public_network_access_enabled
}

output "redis_configuration" {
  value = azurerm_redis_cache.this.redis_configuration
}

output "replicas_per_master" {
  value = azurerm_redis_cache.this.replicas_per_master
}

output "replicas_per_primary" {
  value = azurerm_redis_cache.this.replicas_per_primary
}

output "redis_version" {
  value = azurerm_redis_cache.this.redis_version
}

output "tenant_settings" {
  value = azurerm_redis_cache.this.tenant_settings
}

output "shard_count" {
  value = azurerm_redis_cache.this.shard_count
}

output "subnet_id" {
  value = azurerm_redis_cache.this.subnet_id
}

output "tags" {
  value = azurerm_redis_cache.this.tags
}

output "zones" {
  value = azurerm_redis_cache.this.zones
}

output "id" {
  description = "The Route ID."
  value       = azurerm_redis_cache.this.id
}

output "hostname" {
  description = "The Hostname of the Redis Instance"
  value       = azurerm_redis_cache.this.hostname
}

output "ssl_port" {
  description = "The SSL Port of the Redis Instance"
  value       = azurerm_redis_cache.this.ssl_port
}

output "port" {
  description = "The non-SSL Port of the Redis Instance"
  value       = azurerm_redis_cache.this.port
}

output "primary_access_key" {
  description = "The Primary Access Key for the Redis Instance"
  value       = azurerm_redis_cache.this.primary_access_key
}

output "secondary_access_key" {
  description = "The Secondary Access Key for the Redis Instance"
  value       = azurerm_redis_cache.this.secondary_access_key
}

output "primary_connection_string" {
  description = "The primary connection string of the Redis Instance."
  value       = azurerm_redis_cache.this.primary_connection_string
}

output "secondary_connection_string" {
  description = "The secondary connection string of the Redis Instance."
  value       = azurerm_redis_cache.this.secondary_connection_string
}

output "redis_configuration" {
  description = "A 'redis_configuration' block:"
  value       = azurerm_redis_cache.this.redis_configuration
}

output "maxclients" {
  description = "Returns the max number of connected clients at the same time."
  value       = azurerm_redis_cache.this.maxclients
}

