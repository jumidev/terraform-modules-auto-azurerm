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

output "id" {
  description = "The ID of the Azure PostgreSQL Flexible Server Database."
  value       = azurerm_postgresql_flexible_server_database.this.id
}

