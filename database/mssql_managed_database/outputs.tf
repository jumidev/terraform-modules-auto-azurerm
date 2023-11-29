output "name" {
  value = azurerm_mssql_managed_database.this.name
}

output "managed_instance_id" {
  value = azurerm_mssql_managed_database.this.managed_instance_id
}

output "long_term_retention_policy" {
  value = azurerm_mssql_managed_database.this.long_term_retention_policy
}

output "short_term_retention_days" {
  value = azurerm_mssql_managed_database.this.short_term_retention_days
}

output "id" {
  description = "The Azure SQL Managed Database ID."
  value       = azurerm_mssql_managed_database.this.id
}

