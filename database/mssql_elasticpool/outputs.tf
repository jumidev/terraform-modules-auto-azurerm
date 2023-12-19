output "name" {
  value = azurerm_mssql_elasticpool.this.name
}

output "resource_group_name" {
  value = azurerm_mssql_elasticpool.this.resource_group_name
}

output "location" {
  value = azurerm_mssql_elasticpool.this.location
}

output "server_name" {
  value = azurerm_mssql_elasticpool.this.server_name
}

output "sku" {
  value = azurerm_mssql_elasticpool.this.sku
}

output "per_database_settings" {
  value = azurerm_mssql_elasticpool.this.per_database_settings
}

output "maintenance_configuration_name" {
  value = azurerm_mssql_elasticpool.this.maintenance_configuration_name
}

output "max_size_gb" {
  value = azurerm_mssql_elasticpool.this.max_size_gb
}

output "max_size_bytes" {
  value = azurerm_mssql_elasticpool.this.max_size_bytes
}

output "enclave_type" {
  value = azurerm_mssql_elasticpool.this.enclave_type
}

output "tags" {
  value = azurerm_mssql_elasticpool.this.tags
}

output "zone_redundant" {
  value = azurerm_mssql_elasticpool.this.zone_redundant
}

output "license_type" {
  value = azurerm_mssql_elasticpool.this.license_type
}

output "id" {
  description = "The ID of the MS SQL Elastic Pool."
  value       = azurerm_mssql_elasticpool.this.id
}

