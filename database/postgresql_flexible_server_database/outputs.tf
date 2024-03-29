output "name" {
  value = azurerm_postgresql_flexible_server_database.this.name
}

output "server_id" {
  value = azurerm_postgresql_flexible_server_database.this.server_id
}

output "charset" {
  value = azurerm_postgresql_flexible_server_database.this.charset
}

output "collation" {
  value = azurerm_postgresql_flexible_server_database.this.collation
}

output "collation" {
  description = "Specifies the Collation for the Azure PostgreSQL Flexible Server Database, which needs [to be a valid PostgreSQL Collation](https://www.postgresql.org/docs/current/static/collation.html). Defaults to 'en_US.utf8'. Changing this forces a new Azure PostgreSQL Flexible Server Database to be created. In addition to the Arguments listed above - the following Attributes are exported:"
  value       = azurerm_postgresql_flexible_server_database.this.collation
}

output "id" {
  description = "The ID of the Azure PostgreSQL Flexible Server Database."
  value       = azurerm_postgresql_flexible_server_database.this.id
}

