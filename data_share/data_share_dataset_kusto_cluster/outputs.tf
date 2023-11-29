output "name" {
  value = azurerm_data_share_dataset_kusto_cluster.this.name
}

output "share_id" {
  value = azurerm_data_share_dataset_kusto_cluster.this.share_id
}

output "kusto_cluster_id" {
  value = azurerm_data_share_dataset_kusto_cluster.this.kusto_cluster_id
}

output "id" {
  description = "The resource ID of the Data Share Kusto Cluster Dataset."
  value       = azurerm_data_share_dataset_kusto_cluster.this.id
}

output "display_name" {
  description = "The name of the Data Share Dataset."
  value       = azurerm_data_share_dataset_kusto_cluster.this.display_name
}

output "kusto_cluster_location" {
  description = "The location of the Kusto Cluster."
  value       = azurerm_data_share_dataset_kusto_cluster.this.kusto_cluster_location
}

