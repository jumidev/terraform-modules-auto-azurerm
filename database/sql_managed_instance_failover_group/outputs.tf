output "name" {
  value = azurerm_sql_managed_instance_failover_group.this.name
}

output "managed_instance_name" {
  value = azurerm_sql_managed_instance_failover_group.this.managed_instance_name
}

output "location" {
  value = azurerm_sql_managed_instance_failover_group.this.location
}

output "partner_managed_instance_id" {
  value = azurerm_sql_managed_instance_failover_group.this.partner_managed_instance_id
}

output "read_write_endpoint_failover_policy" {
  value = azurerm_sql_managed_instance_failover_group.this.read_write_endpoint_failover_policy
}

output "resource_group_name" {
  value = azurerm_sql_managed_instance_failover_group.this.resource_group_name
}

output "readonly_endpoint_failover_policy_enabled" {
  value = azurerm_sql_managed_instance_failover_group.this.readonly_endpoint_failover_policy_enabled
}

output "id" {
  description = "The ID of the SQL Instance Failover Group."
  value       = azurerm_sql_managed_instance_failover_group.this.id
}

output "partner_region" {
  description = "A 'partner_region' block."
  value       = azurerm_sql_managed_instance_failover_group.this.partner_region
}

output "role" {
  description = "The partner replication role of the SQL Instance Failover Group."
  value       = azurerm_sql_managed_instance_failover_group.this.role
}

output "location" {
  description = "The Azure Region where the SQL Instance Failover Group partner exists."
  value       = azurerm_sql_managed_instance_failover_group.this.location
}

