output "name" {
  value = azurerm_mariadb_database.this.name
}

output "server_name" {
  value = azurerm_mariadb_database.this.server_name
}

output "resource_group_name" {
  value = azurerm_mariadb_database.this.resource_group_name
}

output "charset" {
  value = azurerm_mariadb_database.this.charset
}

output "collation" {
  value = azurerm_mariadb_database.this.collation
}

output "id" {
  description = "The ID of the MariaDB Database."
  value       = azurerm_mariadb_database.this.id
}

