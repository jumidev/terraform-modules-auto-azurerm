output "name" {
  value = azurerm_mssql_firewall_rule.this.name
}

output "server_id" {
  value = azurerm_mssql_firewall_rule.this.server_id
}

output "start_ip_address" {
  value = azurerm_mssql_firewall_rule.this.start_ip_address
}

output "end_ip_address" {
  value = azurerm_mssql_firewall_rule.this.end_ip_address
}

output "id" {
  description = "The SQL Firewall Rule ID."
  value       = azurerm_mssql_firewall_rule.this.id
}

