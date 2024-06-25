output "name" {
  value = azurerm_mysql_flexible_database.this.name
}

output "server_name" {
  value = azurerm_mysql_flexible_database.this.server_name
}

output "resource_group_name" {
  value = azurerm_mysql_flexible_database.this.resource_group_name
}

output "charset" {
  value = azurerm_mysql_flexible_database.this.charset
}

output "collation" {
  value = azurerm_mysql_flexible_database.this.collation
}

output "id" {
  description = "The ID of the MySQL Database."
  value       = azurerm_mysql_flexible_database.this.id
}

