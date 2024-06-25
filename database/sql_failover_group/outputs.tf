output "name" {
  value = azurerm_sql_failover_group.this.name
}

output "resource_group_name" {
  value = azurerm_sql_failover_group.this.resource_group_name
}

output "server_name" {
  value = azurerm_sql_failover_group.this.server_name
}

output "databases" {
  value = azurerm_sql_failover_group.this.databases
}

output "partner_servers" {
  value = azurerm_sql_failover_group.this.partner_servers
}

output "read_write_endpoint_failover_policy" {
  value = azurerm_sql_failover_group.this.read_write_endpoint_failover_policy
}

output "readonly_endpoint_failover_policy" {
  value = azurerm_sql_failover_group.this.readonly_endpoint_failover_policy
}

output "tags" {
  value = azurerm_sql_failover_group.this.tags
}

output "mode" {
  description = "Failover policy for the read-only endpoint. Possible values are 'Enabled', and 'Disabled' In addition to the Arguments listed above - the following Attributes are exported:"
  value       = azurerm_sql_failover_group.this.mode
}

output "id" {
  description = "The failover group ID."
  value       = azurerm_sql_failover_group.this.id
}

output "location" {
  description = "the location of the failover group."
  value       = azurerm_sql_failover_group.this.location
}

output "role" {
  description = "local replication role of the failover group instance."
  value       = azurerm_sql_failover_group.this.role
}

