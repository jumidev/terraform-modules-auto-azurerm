output "name" {
  value = azurerm_cosmosdb_table.this.name
}

output "resource_group_name" {
  value = azurerm_cosmosdb_table.this.resource_group_name
}

output "account_name" {
  value = azurerm_cosmosdb_table.this.account_name
}

output "throughput" {
  value = azurerm_cosmosdb_table.this.throughput
}

output "autoscale_settings" {
  value = azurerm_cosmosdb_table.this.autoscale_settings
}

output "max_throughput" {
  description = "The maximum throughput of the Table (RU/s). Must be between '1,000' and '1,000,000'. Must be set in increments of '1,000'. Conflicts with 'throughput'. In addition to the Arguments listed above - the following Attributes are exported:"
  value       = azurerm_cosmosdb_table.this.max_throughput
}

output "id" {
  description = "The ID of the CosmosDB Table."
  value       = azurerm_cosmosdb_table.this.id
}

