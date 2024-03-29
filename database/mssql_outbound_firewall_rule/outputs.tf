output "name" {
  value = azurerm_mssql_outbound_firewall_rule.this.name
}

output "server_id" {
  value = azurerm_mssql_outbound_firewall_rule.this.server_id
}

output "server_id" {
  description = "The resource ID of the SQL Server on which to create the Outbound Firewall Rule. Changing this forces a new resource to be created. In addition to the Arguments listed above - the following Attributes are exported:"
  value       = azurerm_mssql_outbound_firewall_rule.this.server_id
}

output "id" {
  description = "The SQL Outbound Firewall Rule ID."
  value       = azurerm_mssql_outbound_firewall_rule.this.id
}

