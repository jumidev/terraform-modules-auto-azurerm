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

output "id" {
  description = "The ID of the PostgreSQL Database."
  value       = azurerm_postgresql_database.this.id
}

