output "name" {
  value = azurerm_sql_database.this.name
}

output "resource_group_name" {
  value = azurerm_sql_database.this.resource_group_name
}

output "location" {
  value = azurerm_sql_database.this.location
}

output "server_name" {
  value = azurerm_sql_database.this.server_name
}

output "create_mode" {
  value = azurerm_sql_database.this.create_mode
}

output "import" {
  value = azurerm_sql_database.this.import
}

output "source_database_id" {
  value = azurerm_sql_database.this.source_database_id
}

output "restore_point_in_time" {
  value = azurerm_sql_database.this.restore_point_in_time
}

output "edition" {
  value = azurerm_sql_database.this.edition
}

output "collation" {
  value = azurerm_sql_database.this.collation
}

output "max_size_bytes" {
  value = azurerm_sql_database.this.max_size_bytes
}

output "requested_service_objective_id" {
  value = azurerm_sql_database.this.requested_service_objective_id
}

output "requested_service_objective_name" {
  value = azurerm_sql_database.this.requested_service_objective_name
}

output "source_database_deletion_date" {
  value = azurerm_sql_database.this.source_database_deletion_date
}

output "elastic_pool_name" {
  value = azurerm_sql_database.this.elastic_pool_name
}

output "storage_endpoint" {
  description = "Specifies the blob storage endpoint (e.g. <https://example.blob.core.windows.net>). This blob storage will hold all Threat Detection audit logs. Required if 'state' is 'Enabled'. In addition to the Arguments listed above - the following Attributes are exported:"
  value       = azurerm_sql_database.this.storage_endpoint
}

output "id" {
  description = "The SQL Database ID."
  value       = azurerm_sql_database.this.id
}

output "creation_date" {
  description = "The creation date of the SQL Database."
  value       = azurerm_sql_database.this.creation_date
}

output "default_secondary_location" {
  description = "The default secondary location of the SQL Database."
  value       = azurerm_sql_database.this.default_secondary_location
}

