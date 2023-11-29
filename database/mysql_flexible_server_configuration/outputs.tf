output "name" {
  value = azurerm_mysql_flexible_server_configuration.this.name
}

output "server_name" {
  value = azurerm_mysql_flexible_server_configuration.this.server_name
}

output "resource_group_name" {
  value = azurerm_mysql_flexible_server_configuration.this.resource_group_name
}

output "value" {
  value = azurerm_mysql_flexible_server_configuration.this.value
}

output "id" {
  description = "The ID of the MySQL Flexible Server Configuration."
  value       = azurerm_mysql_flexible_server_configuration.this.id
}

