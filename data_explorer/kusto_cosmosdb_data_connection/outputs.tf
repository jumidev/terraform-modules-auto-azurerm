output "cosmosdb_container_id" {
  value = azurerm_kusto_cosmosdb_data_connection.this.cosmosdb_container_id
}

output "kusto_database_id" {
  value = azurerm_kusto_cosmosdb_data_connection.this.kusto_database_id
}

output "location" {
  value = azurerm_kusto_cosmosdb_data_connection.this.location
}

output "managed_identity_id" {
  value = azurerm_kusto_cosmosdb_data_connection.this.managed_identity_id
}

output "name" {
  value = azurerm_kusto_cosmosdb_data_connection.this.name
}

output "table_name" {
  value = azurerm_kusto_cosmosdb_data_connection.this.table_name
}

output "mapping_rule_name" {
  value = azurerm_kusto_cosmosdb_data_connection.this.mapping_rule_name
}

output "retrieval_start_date" {
  value = azurerm_kusto_cosmosdb_data_connection.this.retrieval_start_date
}

output "id" {
  description = "The ID of the Data Explorer."
  value       = azurerm_kusto_cosmosdb_data_connection.this.id
}

