output "name" {
  value = azurerm_synapse_sql_pool.this.name
}

output "synapse_workspace_id" {
  value = azurerm_synapse_sql_pool.this.synapse_workspace_id
}

output "sku_name" {
  value = azurerm_synapse_sql_pool.this.sku_name
}

output "create_mode" {
  value = azurerm_synapse_sql_pool.this.create_mode
}

output "collation" {
  value = azurerm_synapse_sql_pool.this.collation
}

output "data_encrypted" {
  value = azurerm_synapse_sql_pool.this.data_encrypted
}

output "recovery_database_id" {
  value = azurerm_synapse_sql_pool.this.recovery_database_id
}

output "restore" {
  value = azurerm_synapse_sql_pool.this.restore
}

output "geo_backup_policy_enabled" {
  value = azurerm_synapse_sql_pool.this.geo_backup_policy_enabled
}

output "storage_account_type" {
  value = azurerm_synapse_sql_pool.this.storage_account_type
}

output "tags" {
  value = azurerm_synapse_sql_pool.this.tags
}

output "point_in_time" {
  description = "Specifies the Snapshot time to restore formatted as an RFC3339 date string. Changing this forces a new Synapse SQL Pool to be created. In addition to the Arguments listed above - the following Attributes are exported:"
  value       = azurerm_synapse_sql_pool.this.point_in_time
}

output "id" {
  description = "The ID of the Synapse SQL Pool."
  value       = azurerm_synapse_sql_pool.this.id
}

