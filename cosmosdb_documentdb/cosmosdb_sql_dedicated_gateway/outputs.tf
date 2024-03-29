output "cosmosdb_account_id" {
  value = azurerm_cosmosdb_sql_dedicated_gateway.this.cosmosdb_account_id
}

output "instance_size" {
  value = azurerm_cosmosdb_sql_dedicated_gateway.this.instance_size
}

output "instance_count" {
  value = azurerm_cosmosdb_sql_dedicated_gateway.this.instance_count
}

output "instance_count" {
  description = "The instance count for the CosmosDB SQL Dedicated Gateway. Possible value is between '1' and '5'. In addition to the Arguments listed above - the following Attributes are exported:"
  value       = azurerm_cosmosdb_sql_dedicated_gateway.this.instance_count
}

output "id" {
  description = "The ID of the CosmosDB SQL Dedicated Gateway."
  value       = azurerm_cosmosdb_sql_dedicated_gateway.this.id
}

