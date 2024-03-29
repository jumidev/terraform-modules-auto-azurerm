output "cosmos_mongo_database_id" {
  value = azurerm_cosmosdb_mongo_user_definition.this.cosmos_mongo_database_id
}

output "username" {
  value = azurerm_cosmosdb_mongo_user_definition.this.username
}

output "password" {
  value     = azurerm_cosmosdb_mongo_user_definition.this.password
  sensitive = true
}

output "inherited_role_names" {
  value = azurerm_cosmosdb_mongo_user_definition.this.inherited_role_names
}

output "inherited_role_names" {
  description = "A list of Mongo Roles that are inherited to the Mongo User Definition. ~> **Note:** The role that needs to be inherited should exist in the Mongo DB of 'cosmos_mongo_database_id'. In addition to the Arguments listed above - the following Attributes are exported:"
  value       = azurerm_cosmosdb_mongo_user_definition.this.inherited_role_names
}

output "id" {
  description = "The ID of the Cosmos DB Mongo User Definition."
  value       = azurerm_cosmosdb_mongo_user_definition.this.id
}

