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

output "id" {
  description = "The failover group ID."
  value       = azurerm_sql_failover_group.this.id
}

output "location" {
  description = "the location of the failover group."
  value       = azurerm_sql_failover_group.this.location
}

output "server_name" {
  description = "the name of the primary SQL Database Server. Changing this forces a new resource to be created."
  value       = azurerm_sql_failover_group.this.server_name
}

output "role" {
  description = "local replication role of the failover group instance."
  value       = azurerm_sql_failover_group.this.role
}

output "databases" {
  description = "list of databases in the failover group."
  value       = azurerm_sql_failover_group.this.databases
}

output "partner_servers" {
  description = "list of partner server information for the failover group."
  value       = azurerm_sql_failover_group.this.partner_servers
}

