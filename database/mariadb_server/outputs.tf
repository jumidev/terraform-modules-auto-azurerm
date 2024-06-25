output "name" {
  value = azurerm_mariadb_server.this.name
}

output "resource_group_name" {
  value = azurerm_mariadb_server.this.resource_group_name
}

output "location" {
  value = azurerm_mariadb_server.this.location
}

output "sku_name" {
  value = azurerm_mariadb_server.this.sku_name
}

output "version" {
  value = azurerm_mariadb_server.this.version
}

output "administrator_login" {
  value = azurerm_mariadb_server.this.administrator_login
}

output "administrator_login_password" {
  value     = random_string.administrator_login_password.result
  sensitive = true
}

output "auto_grow_enabled" {
  value = azurerm_mariadb_server.this.auto_grow_enabled
}

output "backup_retention_days" {
  value = azurerm_mariadb_server.this.backup_retention_days
}

output "create_mode" {
  value = azurerm_mariadb_server.this.create_mode
}

output "creation_source_server_id" {
  value = azurerm_mariadb_server.this.creation_source_server_id
}

output "geo_redundant_backup_enabled" {
  value = azurerm_mariadb_server.this.geo_redundant_backup_enabled
}

output "public_network_access_enabled" {
  value = azurerm_mariadb_server.this.public_network_access_enabled
}

output "restore_point_in_time" {
  value = azurerm_mariadb_server.this.restore_point_in_time
}

output "ssl_enforcement_enabled" {
  value = azurerm_mariadb_server.this.ssl_enforcement_enabled
}

output "ssl_minimal_tls_version_enforced" {
  value = azurerm_mariadb_server.this.ssl_minimal_tls_version_enforced
}

output "storage_mb" {
  value = azurerm_mariadb_server.this.storage_mb
}

output "tags" {
  value = azurerm_mariadb_server.this.tags
}

output "id" {
  description = "The ID of the MariaDB Server."
  value       = azurerm_mariadb_server.this.id
}

output "fqdn" {
  description = "The FQDN of the MariaDB Server."
  value       = azurerm_mariadb_server.this.fqdn
}

