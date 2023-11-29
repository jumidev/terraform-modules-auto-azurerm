output "name" {
  value = azurerm_redis_enterprise_cluster.this.name
}

output "resource_group_name" {
  value = azurerm_redis_enterprise_cluster.this.resource_group_name
}

output "location" {
  value = azurerm_redis_enterprise_cluster.this.location
}

output "sku_name" {
  value = azurerm_redis_enterprise_cluster.this.sku_name
}

output "minimum_tls_version" {
  value = azurerm_redis_enterprise_cluster.this.minimum_tls_version
}

output "zones" {
  value = azurerm_redis_enterprise_cluster.this.zones
}

output "tags" {
  value = azurerm_redis_enterprise_cluster.this.tags
}

output "id" {
  description = "The ID of the Redis Enterprise Cluster."
  value       = azurerm_redis_enterprise_cluster.this.id
}

output "hostname" {
  description = "DNS name of the cluster endpoint."
  value       = azurerm_redis_enterprise_cluster.this.hostname
}

