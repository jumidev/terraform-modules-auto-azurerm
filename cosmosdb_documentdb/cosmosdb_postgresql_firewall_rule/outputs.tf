output "name" {
  value = azurerm_cosmosdb_postgresql_firewall_rule.this.name
}

output "cluster_id" {
  value = azurerm_cosmosdb_postgresql_firewall_rule.this.cluster_id
}

output "end_ip_address" {
  value = azurerm_cosmosdb_postgresql_firewall_rule.this.end_ip_address
}

output "start_ip_address" {
  value = azurerm_cosmosdb_postgresql_firewall_rule.this.start_ip_address
}

output "id" {
  description = "The ID of the Azure Cosmos DB for PostgreSQL Firewall Rule."
  value       = azurerm_cosmosdb_postgresql_firewall_rule.this.id
}

