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

output "end_ip_address" {
  description = "Specifies the End IP Address associated with this Firewall Rule. Changing this forces a new resource to be created. -> **NOTE:** The Azure feature 'Allow access to Azure services' can be enabled by setting 'start_ip_address' and 'end_ip_address' to '0.0.0.0' which ([is documented in the Azure API Docs](https://docs.microsoft.com/rest/api/sql/firewallrules/createorupdate)). In addition to the Arguments listed above - the following Attributes are exported:"
  value       = azurerm_postgresql_firewall_rule.this.end_ip_address
}

output "id" {
  description = "The ID of the PostgreSQL Firewall Rule."
  value       = azurerm_postgresql_firewall_rule.this.id
}

