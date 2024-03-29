output "name" {
  value = azurerm_postgresql_configuration.this.name
}

output "server_name" {
  value = azurerm_postgresql_configuration.this.server_name
}

output "resource_group_name" {
  value = azurerm_postgresql_configuration.this.resource_group_name
}

output "value" {
  value = azurerm_postgresql_configuration.this.value
}

output "value" {
  description = "Specifies the value of the PostgreSQL Configuration. See the PostgreSQL documentation for valid values. Changing this forces a new resource to be created. In addition to the Arguments listed above - the following Attributes are exported:"
  value       = azurerm_postgresql_configuration.this.value
}

output "id" {
  description = "The ID of the PostgreSQL Configuration."
  value       = azurerm_postgresql_configuration.this.id
}

