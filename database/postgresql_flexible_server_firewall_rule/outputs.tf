output "name" {
  value = azurerm_postgresql_flexible_server_firewall_rule.this.name
}

output "server_id" {
  value = azurerm_postgresql_flexible_server_firewall_rule.this.server_id
}

output "start_ip_address" {
  value = azurerm_postgresql_flexible_server_firewall_rule.this.start_ip_address
}

output "end_ip_address" {
  value = azurerm_postgresql_flexible_server_firewall_rule.this.end_ip_address
}

output "id" {
  description = "The ID of the PostgreSQL Flexible Server Firewall Rule."
  value       = azurerm_postgresql_flexible_server_firewall_rule.this.id
}

