output "name" {
  value = azurerm_mssql_database.this.name
}

output "server_id" {
  value = azurerm_mssql_database.this.server_id
}

output "auto_pause_delay_in_minutes" {
  value = azurerm_mssql_database.this.auto_pause_delay_in_minutes
}

output "create_mode" {
  value = azurerm_mssql_database.this.create_mode
}

output "import" {
  value = azurerm_mssql_database.this.import
}

output "creation_source_database_id" {
  value = azurerm_mssql_database.this.creation_source_database_id
}

output "collation" {
  value = azurerm_mssql_database.this.collation
}

output "elastic_pool_id" {
  value = azurerm_mssql_database.this.elastic_pool_id
}

output "enclave_type" {
  value = azurerm_mssql_database.this.enclave_type
}

output "geo_backup_enabled" {
  value = azurerm_mssql_database.this.geo_backup_enabled
}

output "maintenance_configuration_name" {
  value = azurerm_mssql_database.this.maintenance_configuration_name
}

output "ledger_enabled" {
  value = azurerm_mssql_database.this.ledger_enabled
}

output "license_type" {
  value = azurerm_mssql_database.this.license_type
}

output "long_term_retention_policy" {
  value = azurerm_mssql_database.this.long_term_retention_policy
}

output "max_size_gb" {
  value = azurerm_mssql_database.this.max_size_gb
}

output "min_capacity" {
  value = azurerm_mssql_database.this.min_capacity
}

output "restore_point_in_time" {
  value = azurerm_mssql_database.this.restore_point_in_time
}

output "recover_database_id" {
  value = azurerm_mssql_database.this.recover_database_id
}

output "recovery_point_id" {
  value = azurerm_mssql_database.this.recovery_point_id
}

output "restore_dropped_database_id" {
  value = azurerm_mssql_database.this.restore_dropped_database_id
}

output "restore_long_term_retention_backup_id" {
  value = azurerm_mssql_database.this.restore_long_term_retention_backup_id
}

output "read_replica_count" {
  value = azurerm_mssql_database.this.read_replica_count
}

output "read_scale" {
  value = azurerm_mssql_database.this.read_scale
}

output "sample_name" {
  value = azurerm_mssql_database.this.sample_name
}

output "short_term_retention_policy" {
  value = azurerm_mssql_database.this.short_term_retention_policy
}

output "sku_name" {
  value = azurerm_mssql_database.this.sku_name
}

output "storage_account_type" {
  value = azurerm_mssql_database.this.storage_account_type
}

output "identity_ids" {
  description = "Specifies a list of User Assigned Managed Identity IDs to be assigned to this SQL Database. In addition to the Arguments listed above - the following Attributes are exported:"
  value       = azurerm_mssql_database.this.identity_ids
}

output "id" {
  description = "The ID of the MS SQL Database."
  value       = azurerm_mssql_database.this.id
}

output "principal_id" {
  description = "The Principal ID for the Service Principal associated with the Identity of this SQL Database."
  value       = azurerm_mssql_database.this.principal_id
}

output "tenant_id" {
  description = "The Tenant ID for the Service Principal associated with the Identity of this SQL Database. -> You can access the Principal ID via 'azurerm_mssql_database.example.identity[0].principal_id' and the Tenant ID via 'azurerm_mssql_database.example.identity[0].tenant_id'"
  value       = azurerm_mssql_database.this.tenant_id
}

