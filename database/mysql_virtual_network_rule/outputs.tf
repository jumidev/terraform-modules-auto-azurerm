output "name" {
  value = azurerm_mysql_virtual_network_rule.this.name
}

output "resource_group_name" {
  value = azurerm_mysql_virtual_network_rule.this.resource_group_name
}

output "server_name" {
  value = azurerm_mysql_virtual_network_rule.this.server_name
}

output "subnet_id" {
  value = azurerm_mysql_virtual_network_rule.this.subnet_id
}

output "id" {
  description = "The ID of the MySQL Virtual Network Rule."
  value       = azurerm_mysql_virtual_network_rule.this.id
}

