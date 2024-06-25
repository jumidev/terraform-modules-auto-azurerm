output "name" {
  value = azurerm_postgresql_flexible_server_configuration.this.name
}

output "server_id" {
  value = azurerm_postgresql_flexible_server_configuration.this.server_id
}

output "value" {
  value = azurerm_postgresql_flexible_server_configuration.this.value
}

output "id" {
  description = "The ID of the PostgreSQL Configuration."
  value       = azurerm_postgresql_flexible_server_configuration.this.id
}

