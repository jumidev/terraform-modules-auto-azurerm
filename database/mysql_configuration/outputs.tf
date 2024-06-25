output "name" {
  value = azurerm_mysql_configuration.this.name
}

output "server_name" {
  value = azurerm_mysql_configuration.this.server_name
}

output "resource_group_name" {
  value = azurerm_mysql_configuration.this.resource_group_name
}

output "value" {
  value = azurerm_mysql_configuration.this.value
}

output "id" {
  description = "The ID of the MySQL Configuration."
  value       = azurerm_mysql_configuration.this.id
}

