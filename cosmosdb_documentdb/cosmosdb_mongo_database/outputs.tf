output "name" {
  value = azurerm_cosmosdb_mongo_database.this.name
}

output "resource_group_name" {
  value = azurerm_cosmosdb_mongo_database.this.resource_group_name
}

output "account_name" {
  value = azurerm_cosmosdb_mongo_database.this.account_name
}

output "throughput" {
  value = azurerm_cosmosdb_mongo_database.this.throughput
}

output "autoscale_settings" {
  value = azurerm_cosmosdb_mongo_database.this.autoscale_settings
}

output "id" {
  description = "The ID of the Cosmos DB Mongo Database."
  value       = azurerm_cosmosdb_mongo_database.this.id
}

output "spring_cloud_app_cosmosdb_association" {
  value = var.spring_cloud_app_cosmosdb_association
}

