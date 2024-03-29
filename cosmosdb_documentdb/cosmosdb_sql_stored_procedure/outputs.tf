output "name" {
  value = azurerm_cosmosdb_sql_stored_procedure.this.name
}

output "resource_group_name" {
  value = azurerm_cosmosdb_sql_stored_procedure.this.resource_group_name
}

output "account_name" {
  value = azurerm_cosmosdb_sql_stored_procedure.this.account_name
}

output "database_name" {
  value = azurerm_cosmosdb_sql_stored_procedure.this.database_name
}

output "container_name" {
  value = azurerm_cosmosdb_sql_stored_procedure.this.container_name
}

output "body" {
  value = azurerm_cosmosdb_sql_stored_procedure.this.body
}

output "body" {
  description = "The body of the stored procedure. In addition to the Arguments listed above - the following Attributes are exported:"
  value       = azurerm_cosmosdb_sql_stored_procedure.this.body
}

output "id" {
  description = "The ID of the Cosmos DB SQL Stored Procedure."
  value       = azurerm_cosmosdb_sql_stored_procedure.this.id
}

