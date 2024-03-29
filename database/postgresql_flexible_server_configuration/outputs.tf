output "name" {
  value = azurerm_postgresql_flexible_server_configuration.this.name
}

output "server_id" {
  value = azurerm_postgresql_flexible_server_configuration.this.server_id
}

output "value" {
  value = azurerm_postgresql_flexible_server_configuration.this.value
}

output "value" {
  description = "Specifies the value of the PostgreSQL Configuration. See the PostgreSQL documentation for valid values. In addition to the Arguments listed above - the following Attributes are exported:"
  value       = azurerm_postgresql_flexible_server_configuration.this.value
}

output "id" {
  description = "The ID of the PostgreSQL Configuration."
  value       = azurerm_postgresql_flexible_server_configuration.this.id
}

