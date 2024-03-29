output "name" {
  value = azurerm_mysql_flexible_server.this.name
}

output "resource_group_name" {
  value = azurerm_mysql_flexible_server.this.resource_group_name
}

output "location" {
  value = azurerm_mysql_flexible_server.this.location
}

output "administrator_login" {
  value = azurerm_mysql_flexible_server.this.administrator_login
}

output "administrator_password" {
  value     = random_string.administrator_password.result
  sensitive = true
}

output "backup_retention_days" {
  value = azurerm_mysql_flexible_server.this.backup_retention_days
}

output "create_mode" {
  value = azurerm_mysql_flexible_server.this.create_mode
}

output "customer_managed_key" {
  value = azurerm_mysql_flexible_server.this.customer_managed_key
}

output "delegated_subnet_id" {
  value = azurerm_mysql_flexible_server.this.delegated_subnet_id
}

output "geo_redundant_backup_enabled" {
  value = azurerm_mysql_flexible_server.this.geo_redundant_backup_enabled
}

output "high_availability" {
  value = azurerm_mysql_flexible_server.this.high_availability
}

output "identity" {
  value = azurerm_mysql_flexible_server.this.identity
}

output "maintenance_window" {
  value = azurerm_mysql_flexible_server.this.maintenance_window
}

output "point_in_time_restore_time_in_utc" {
  value = azurerm_mysql_flexible_server.this.point_in_time_restore_time_in_utc
}

output "private_dns_zone_id" {
  value = azurerm_mysql_flexible_server.this.private_dns_zone_id
}

output "replication_role" {
  value = azurerm_mysql_flexible_server.this.replication_role
}

output "sku_name" {
  value = azurerm_mysql_flexible_server.this.sku_name
}

output "source_server_id" {
  value = azurerm_mysql_flexible_server.this.source_server_id
}

output "storage" {
  value = azurerm_mysql_flexible_server.this.storage
}

output "version" {
  value = azurerm_mysql_flexible_server.this.version
}

output "zone" {
  value = azurerm_mysql_flexible_server.this.zone
}

output "tags" {
  value = azurerm_mysql_flexible_server.this.tags
}

output "size_gb" {
  description = "The max storage allowed for the MySQL Flexible Server. Possible values are between '20' and '16384'. In addition to the Arguments listed above - the following Attributes are exported:"
  value       = azurerm_mysql_flexible_server.this.size_gb
}

output "id" {
  description = "The ID of the MySQL Flexible Server."
  value       = azurerm_mysql_flexible_server.this.id
}

output "fqdn" {
  description = "The fully qualified domain name of the MySQL Flexible Server."
  value       = azurerm_mysql_flexible_server.this.fqdn
}

output "public_network_access_enabled" {
  description = "Is the public network access enabled?"
  value       = azurerm_mysql_flexible_server.this.public_network_access_enabled
}

output "replica_capacity" {
  description = "The maximum number of replicas that a primary MySQL Flexible Server can have."
  value       = azurerm_mysql_flexible_server.this.replica_capacity
}

