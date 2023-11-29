output "name" {
  value = azurerm_sql_elasticpool.this.name
}

output "resource_group_name" {
  value = azurerm_sql_elasticpool.this.resource_group_name
}

output "location" {
  value = azurerm_sql_elasticpool.this.location
}

output "server_name" {
  value = azurerm_sql_elasticpool.this.server_name
}

output "edition" {
  value = azurerm_sql_elasticpool.this.edition
}

output "dtu" {
  value = azurerm_sql_elasticpool.this.dtu
}

output "db_dtu_min" {
  value = azurerm_sql_elasticpool.this.db_dtu_min
}

output "db_dtu_max" {
  value = azurerm_sql_elasticpool.this.db_dtu_max
}

output "pool_size" {
  value = azurerm_sql_elasticpool.this.pool_size
}

output "tags" {
  value = azurerm_sql_elasticpool.this.tags
}

output "id" {
  description = "The SQL Elastic Pool ID."
  value       = azurerm_sql_elasticpool.this.id
}

output "creation_date" {
  description = "The creation date of the SQL Elastic Pool."
  value       = azurerm_sql_elasticpool.this.creation_date
}

