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

output "collation" {
  description = "Specifies the Collation for the MariaDB Database, which needs [to be a valid MariaDB Collation](https://mariadb.com/kb/en/library/setting-character-sets-and-collations). Changing this forces a new resource to be created. In addition to the Arguments listed above - the following Attributes are exported:"
  value       = azurerm_mariadb_database.this.collation
}

output "id" {
  description = "The ID of the MariaDB Database."
  value       = azurerm_mariadb_database.this.id
}

