output "name" {
  value = azurerm_mssql_failover_group.this.name
}

output "server_id" {
  value = azurerm_mssql_failover_group.this.server_id
}

output "partner_server" {
  value = azurerm_mssql_failover_group.this.partner_server
}

output "databases" {
  value = azurerm_mssql_failover_group.this.databases
}

output "readonly_endpoint_failover_policy_enabled" {
  value = azurerm_mssql_failover_group.this.readonly_endpoint_failover_policy_enabled
}

output "read_write_endpoint_failover_policy" {
  value = azurerm_mssql_failover_group.this.read_write_endpoint_failover_policy
}

output "tags" {
  value = azurerm_mssql_failover_group.this.tags
}

output "id" {
  description = "The ID of the Failover Group."
  value       = azurerm_mssql_failover_group.this.id
}

output "partner_server" {
  description = "A 'partner_server' block."
  value       = azurerm_mssql_failover_group.this.partner_server
}

output "location" {
  description = "The location of the partner server."
  value       = azurerm_mssql_failover_group.this.location
}

output "role" {
  description = "The replication role of the partner server. Possible values include 'Primary' or 'Secondary'."
  value       = azurerm_mssql_failover_group.this.role
}

output "create" {
  description = "(Defaults to 30 minutes) Used when creating the Failover Group."
  value       = azurerm_mssql_failover_group.this.create
}

output "update" {
  description = "(Defaults to 30 minutes) Used when updating the Failover Group."
  value       = azurerm_mssql_failover_group.this.update
}

output "read" {
  description = "(Defaults to 5 minutes) Used when retrieving the Failover Group."
  value       = azurerm_mssql_failover_group.this.read
}

output "delete" {
  description = "(Defaults to 30 minutes) Used when deleting the Failover Group."
  value       = azurerm_mssql_failover_group.this.delete
}

