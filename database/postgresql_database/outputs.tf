output "name" {
  value = azurerm_postgresql_database.this.name
}

output "server_name" {
  value = azurerm_postgresql_database.this.server_name
}

output "resource_group_name" {
  value = azurerm_postgresql_database.this.resource_group_name
}

output "charset" {
  value = azurerm_postgresql_database.this.charset
}

output "collation" {
  value = azurerm_postgresql_database.this.collation
}

output "collation" {
  description = "Specifies the Collation for the PostgreSQL Database, which needs [to be a valid PostgreSQL Collation](https://www.postgresql.org/docs/current/static/collation.html). Note that Microsoft uses different [notation](https://msdn.microsoft.com/library/windows/desktop/dd373814.aspx) - en-US instead of en_US. Changing this forces a new resource to be created. In addition to the Arguments listed above - the following Attributes are exported:"
  value       = azurerm_postgresql_database.this.collation
}

output "id" {
  description = "The ID of the PostgreSQL Database."
  value       = azurerm_postgresql_database.this.id
}

