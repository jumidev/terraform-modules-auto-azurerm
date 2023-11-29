output "name" {
  value = azurerm_cosmosdb_sql_database.this.name
}

output "resource_group_name" {
  value = azurerm_cosmosdb_sql_database.this.resource_group_name
}

output "account_name" {
  value = azurerm_cosmosdb_sql_database.this.account_name
}

output "throughput" {
  value = azurerm_cosmosdb_sql_database.this.throughput
}

output "autoscale_settings" {
  value = azurerm_cosmosdb_sql_database.this.autoscale_settings
}

output "id" {
  description = "The ID of the CosmosDB SQL Database."
  value       = azurerm_cosmosdb_sql_database.this.id
}

