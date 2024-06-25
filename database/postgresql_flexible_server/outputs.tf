output "name" {
  value = azurerm_postgresql_flexible_server.this.name
}

output "resource_group_name" {
  value = azurerm_postgresql_flexible_server.this.resource_group_name
}

output "location" {
  value = azurerm_postgresql_flexible_server.this.location
}

output "administrator_login" {
  value = azurerm_postgresql_flexible_server.this.administrator_login
}

output "administrator_password" {
  value     = random_string.administrator_password.result
  sensitive = true
}

output "authentication" {
  value = azurerm_postgresql_flexible_server.this.authentication
}

output "backup_retention_days" {
  value = azurerm_postgresql_flexible_server.this.backup_retention_days
}

output "customer_managed_key" {
  value = azurerm_postgresql_flexible_server.this.customer_managed_key
}

output "geo_redundant_backup_enabled" {
  value = azurerm_postgresql_flexible_server.this.geo_redundant_backup_enabled
}

output "create_mode" {
  value = azurerm_postgresql_flexible_server.this.create_mode
}

output "delegated_subnet_id" {
  value = azurerm_postgresql_flexible_server.this.delegated_subnet_id
}

output "private_dns_zone_id" {
  value = azurerm_postgresql_flexible_server.this.private_dns_zone_id
}

output "public_network_access_enabled" {
  value = azurerm_postgresql_flexible_server.this.public_network_access_enabled
}

output "high_availability" {
  value = azurerm_postgresql_flexible_server.this.high_availability
}

output "identity" {
  value = azurerm_postgresql_flexible_server.this.identity
}

output "maintenance_window" {
  value = azurerm_postgresql_flexible_server.this.maintenance_window
}

output "point_in_time_restore_time_in_utc" {
  value = azurerm_postgresql_flexible_server.this.point_in_time_restore_time_in_utc
}

output "replication_role" {
  value = azurerm_postgresql_flexible_server.this.replication_role
}

output "sku_name" {
  value = azurerm_postgresql_flexible_server.this.sku_name
}

output "source_server_id" {
  value = azurerm_postgresql_flexible_server.this.source_server_id
}

output "auto_grow_enabled" {
  value = azurerm_postgresql_flexible_server.this.auto_grow_enabled
}

output "storage_mb" {
  value = azurerm_postgresql_flexible_server.this.storage_mb
}

output "storage_tier" {
  value = azurerm_postgresql_flexible_server.this.storage_tier
}

output "tags" {
  value = azurerm_postgresql_flexible_server.this.tags
}

output "version" {
  value = azurerm_postgresql_flexible_server.this.version
}

output "zone" {
  value = azurerm_postgresql_flexible_server.this.zone
}

output "id" {
  description = "The ID of the PostgreSQL Flexible Server."
  value       = azurerm_postgresql_flexible_server.this.id
}

output "fqdn" {
  description = "The FQDN of the PostgreSQL Flexible Server."
  value       = azurerm_postgresql_flexible_server.this.fqdn
}

