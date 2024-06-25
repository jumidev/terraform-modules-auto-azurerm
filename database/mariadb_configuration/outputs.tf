output "name" {
  value = azurerm_mariadb_configuration.this.name
}

output "server_name" {
  value = azurerm_mariadb_configuration.this.server_name
}

output "resource_group_name" {
  value = azurerm_mariadb_configuration.this.resource_group_name
}

output "value" {
  value = azurerm_mariadb_configuration.this.value
}

output "id" {
  description = "The ID of the MariaDB Configuration."
  value       = azurerm_mariadb_configuration.this.id
}

