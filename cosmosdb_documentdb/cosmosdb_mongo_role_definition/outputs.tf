output "cosmos_mongo_database_id" {
  value = azurerm_cosmosdb_mongo_role_definition.this.cosmos_mongo_database_id
}

output "role_name" {
  value = azurerm_cosmosdb_mongo_role_definition.this.role_name
}

output "inherited_role_names" {
  value = azurerm_cosmosdb_mongo_role_definition.this.inherited_role_names
}

output "privilege" {
  value = azurerm_cosmosdb_mongo_role_definition.this.privilege
}

output "db_name" {
  description = "The name of the Mongo DB that the Role Definition is applied. In addition to the Arguments listed above - the following Attributes are exported:"
  value       = azurerm_cosmosdb_mongo_role_definition.this.db_name
}

output "id" {
  description = "The ID of the Cosmos DB Mongo Role Definition."
  value       = azurerm_cosmosdb_mongo_role_definition.this.id
}

