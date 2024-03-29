output "mssql_server_id" {
  value = azurerm_mssql_server_dns_alias.this.mssql_server_id
}

output "name" {
  value = azurerm_mssql_server_dns_alias.this.name
}

output "name" {
  description = "The name which should be used for this MSSQL Server DNS Alias. Changing this forces a new MSSQL Server DNS Alias to be created. In addition to the Arguments listed above - the following Attributes are exported:"
  value       = azurerm_mssql_server_dns_alias.this.name
}

output "id" {
  description = "The ID of the MSSQL Server DNS Alias."
  value       = azurerm_mssql_server_dns_alias.this.id
}

output "dns_record" {
  description = "The fully qualified DNS record for alias."
  value       = azurerm_mssql_server_dns_alias.this.dns_record
}

