output "name" {
  value = azurerm_cosmosdb_sql_function.this.name
}

output "container_id" {
  value = azurerm_cosmosdb_sql_function.this.container_id
}

output "body" {
  value = azurerm_cosmosdb_sql_function.this.body
}

output "body" {
  description = "Body of the User Defined Function. In addition to the Arguments listed above - the following Attributes are exported:"
  value       = azurerm_cosmosdb_sql_function.this.body
}

output "id" {
  description = "The ID of the SQL User Defined Function."
  value       = azurerm_cosmosdb_sql_function.this.id
}

