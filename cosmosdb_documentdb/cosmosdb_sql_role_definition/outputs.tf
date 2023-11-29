output "resource_group_name" {
  value = azurerm_cosmosdb_sql_role_definition.this.resource_group_name
}

output "account_name" {
  value = azurerm_cosmosdb_sql_role_definition.this.account_name
}

output "assignable_scopes" {
  value = azurerm_cosmosdb_sql_role_definition.this.assignable_scopes
}

output "name" {
  value = azurerm_cosmosdb_sql_role_definition.this.name
}

output "permissions" {
  value = azurerm_cosmosdb_sql_role_definition.this.permissions
}

output "role_definition_id" {
  value = azurerm_cosmosdb_sql_role_definition.this.role_definition_id
}

output "type" {
  value = azurerm_cosmosdb_sql_role_definition.this.type
}

output "id" {
  description = "The ID of the Cosmos DB SQL Role Definition."
  value       = azurerm_cosmosdb_sql_role_definition.this.id
}

