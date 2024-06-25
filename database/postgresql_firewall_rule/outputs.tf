output "name" {
  value = azurerm_postgresql_firewall_rule.this.name
}

output "server_name" {
  value = azurerm_postgresql_firewall_rule.this.server_name
}

output "resource_group_name" {
  value = azurerm_postgresql_firewall_rule.this.resource_group_name
}

output "start_ip_address" {
  value = azurerm_postgresql_firewall_rule.this.start_ip_address
}

output "end_ip_address" {
  value = azurerm_postgresql_firewall_rule.this.end_ip_address
}

output "id" {
  description = "The ID of the PostgreSQL Firewall Rule."
  value       = azurerm_postgresql_firewall_rule.this.id
}

