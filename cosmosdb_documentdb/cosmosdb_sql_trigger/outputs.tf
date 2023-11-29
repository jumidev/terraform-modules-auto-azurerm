output "name" {
  value = azurerm_cosmosdb_sql_trigger.this.name
}

output "container_id" {
  value = azurerm_cosmosdb_sql_trigger.this.container_id
}

output "body" {
  value = azurerm_cosmosdb_sql_trigger.this.body
}

output "operation" {
  value = azurerm_cosmosdb_sql_trigger.this.operation
}

output "type" {
  value = azurerm_cosmosdb_sql_trigger.this.type
}

output "id" {
  description = "The ID of the SQL Trigger."
  value       = azurerm_cosmosdb_sql_trigger.this.id
}

