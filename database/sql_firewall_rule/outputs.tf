output "name" {
  value = azurerm_sql_firewall_rule.this.name
}

output "resource_group_name" {
  value = azurerm_sql_firewall_rule.this.resource_group_name
}

output "server_name" {
  value = azurerm_sql_firewall_rule.this.server_name
}

output "start_ip_address" {
  value = azurerm_sql_firewall_rule.this.start_ip_address
}

output "end_ip_address" {
  value = azurerm_sql_firewall_rule.this.end_ip_address
}

output "id" {
  description = "The SQL Firewall Rule ID."
  value       = azurerm_sql_firewall_rule.this.id
}

