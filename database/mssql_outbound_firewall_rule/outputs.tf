output "name" {
  value = azurerm_mssql_outbound_firewall_rule.this.name
}

output "server_id" {
  value = azurerm_mssql_outbound_firewall_rule.this.server_id
}

output "id" {
  description = "The SQL Outbound Firewall Rule ID."
  value       = azurerm_mssql_outbound_firewall_rule.this.id
}

