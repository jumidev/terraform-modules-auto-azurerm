output "cluster_id" {
  value = azurerm_kusto_cluster_customer_managed_key.this.cluster_id
}

output "key_vault_id" {
  value = azurerm_kusto_cluster_customer_managed_key.this.key_vault_id
}

output "key_name" {
  value = azurerm_kusto_cluster_customer_managed_key.this.key_name
}

output "key_version" {
  value = azurerm_kusto_cluster_customer_managed_key.this.key_version
}

output "user_identity" {
  value = azurerm_kusto_cluster_customer_managed_key.this.user_identity
}

output "id" {
  description = "The ID of the Kusto Cluster."
  value       = azurerm_kusto_cluster_customer_managed_key.this.id
}

