output "name" {
  value = azurerm_kusto_database.this.name
}

output "location" {
  value = azurerm_kusto_database.this.location
}

output "resource_group_name" {
  value = azurerm_kusto_database.this.resource_group_name
}

output "cluster_name" {
  value = azurerm_kusto_database.this.cluster_name
}

output "hot_cache_period" {
  value = azurerm_kusto_database.this.hot_cache_period
}

output "soft_delete_period" {
  value = azurerm_kusto_database.this.soft_delete_period
}

output "id" {
  description = "The Kusto Cluster ID."
  value       = azurerm_kusto_database.this.id
}

output "size" {
  description = "The size of the database in bytes."
  value       = azurerm_kusto_database.this.size
}

