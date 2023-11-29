output "name" {
  value = azurerm_log_analytics_cluster.this.name
}

output "resource_group_name" {
  value = azurerm_log_analytics_cluster.this.resource_group_name
}

output "location" {
  value = azurerm_log_analytics_cluster.this.location
}

output "identity" {
  value = azurerm_log_analytics_cluster.this.identity
}

output "size_gb" {
  value = azurerm_log_analytics_cluster.this.size_gb
}

output "tags" {
  value = azurerm_log_analytics_cluster.this.tags
}

output "id" {
  description = "The ID of the Log Analytics Cluster."
  value       = azurerm_log_analytics_cluster.this.id
}

output "identity" {
  description = "A 'identity' block."
  value       = azurerm_log_analytics_cluster.this.identity
}

output "cluster_id" {
  description = "The GUID of the cluster."
  value       = azurerm_log_analytics_cluster.this.cluster_id
}

output "principal_id" {
  description = "The Principal ID associated with this Managed Service Identity."
  value       = azurerm_log_analytics_cluster.this.principal_id
}

output "tenant_id" {
  description = "The Tenant ID associated with this Managed Service Identity."
  value       = azurerm_log_analytics_cluster.this.tenant_id
}

output "type" {
  description = "The identity type of this Managed Service Identity."
  value       = azurerm_log_analytics_cluster.this.type
}

