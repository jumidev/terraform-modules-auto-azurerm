output "resource_group_name" {
  value = azurerm_cosmosdb_sql_role_assignment.this.resource_group_name
}

output "account_name" {
  value = azurerm_cosmosdb_sql_role_assignment.this.account_name
}

output "principal_id" {
  value = azurerm_cosmosdb_sql_role_assignment.this.principal_id
}

output "role_definition_id" {
  value = azurerm_cosmosdb_sql_role_assignment.this.role_definition_id
}

output "scope" {
  value = azurerm_cosmosdb_sql_role_assignment.this.scope
}

output "name" {
  value = azurerm_cosmosdb_sql_role_assignment.this.name
}

output "id" {
  description = "The ID of the Cosmos DB SQL Role Assignment."
  value       = azurerm_cosmosdb_sql_role_assignment.this.id
}

