output "name" {
  value = azurerm_data_share_dataset_kusto_database.this.name
}

output "share_id" {
  value = azurerm_data_share_dataset_kusto_database.this.share_id
}

output "kusto_database_id" {
  value = azurerm_data_share_dataset_kusto_database.this.kusto_database_id
}

output "id" {
  description = "The resource ID of the Data Share Kusto Database Dataset."
  value       = azurerm_data_share_dataset_kusto_database.this.id
}

output "display_name" {
  description = "The name of the Data Share Dataset."
  value       = azurerm_data_share_dataset_kusto_database.this.display_name
}

output "kusto_cluster_location" {
  description = "The location of the Kusto Cluster."
  value       = azurerm_data_share_dataset_kusto_database.this.kusto_cluster_location
}

