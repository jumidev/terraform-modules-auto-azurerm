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

output "id" {
  description = "The ID of the CosmosDB Table."
  value       = azurerm_cosmosdb_table.this.id
}

