output "key_vault_key_id" {
  value = azurerm_log_analytics_cluster_customer_managed_key.this.key_vault_key_id
}

output "log_analytics_cluster_id" {
  value = azurerm_log_analytics_cluster_customer_managed_key.this.log_analytics_cluster_id
}

output "id" {
  description = "The ID of the Log Analytics Cluster Customer Managed Key."
  value       = azurerm_log_analytics_cluster_customer_managed_key.this.id
}

