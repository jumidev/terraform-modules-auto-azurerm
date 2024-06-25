output "kubernetes_cluster_id" {
  value = azurerm_kubernetes_cluster_trusted_access_role_binding.this.kubernetes_cluster_id
}

output "name" {
  value = azurerm_kubernetes_cluster_trusted_access_role_binding.this.name
}

output "roles" {
  value = azurerm_kubernetes_cluster_trusted_access_role_binding.this.roles
}

output "source_resource_id" {
  value = azurerm_kubernetes_cluster_trusted_access_role_binding.this.source_resource_id
}

output "id" {
  description = "The ID of the Kubernetes Cluster Trusted Access Role Binding."
  value       = azurerm_kubernetes_cluster_trusted_access_role_binding.this.id
}

