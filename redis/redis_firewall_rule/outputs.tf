output "name" {
  value = azurerm_redis_firewall_rule.this.name
}

output "redis_cache_name" {
  value = azurerm_redis_firewall_rule.this.redis_cache_name
}

output "resource_group_name" {
  value = azurerm_redis_firewall_rule.this.resource_group_name
}

output "start_ip" {
  value = azurerm_redis_firewall_rule.this.start_ip
}

output "end_ip" {
  value = azurerm_redis_firewall_rule.this.end_ip
}

output "id" {
  description = "The ID of the Redis Firewall Rule."
  value       = azurerm_redis_firewall_rule.this.id
}

