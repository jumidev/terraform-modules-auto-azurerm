output "name" {
  value = azurerm_arc_kubernetes_cluster_extension.this.name
}

output "cluster_id" {
  value = azurerm_arc_kubernetes_cluster_extension.this.cluster_id
}

output "extension_type" {
  value = azurerm_arc_kubernetes_cluster_extension.this.extension_type
}

output "configuration_protected_settings" {
  value = azurerm_arc_kubernetes_cluster_extension.this.configuration_protected_settings
}

output "configuration_settings" {
  value = azurerm_arc_kubernetes_cluster_extension.this.configuration_settings
}

output "identity" {
  value = azurerm_arc_kubernetes_cluster_extension.this.identity
}

output "release_train" {
  value = azurerm_arc_kubernetes_cluster_extension.this.release_train
}

output "release_namespace" {
  value = azurerm_arc_kubernetes_cluster_extension.this.release_namespace
}

output "target_namespace" {
  value = azurerm_arc_kubernetes_cluster_extension.this.target_namespace
}

output "version" {
  value = azurerm_arc_kubernetes_cluster_extension.this.version
}

output "id" {
  description = "The ID of the Arc Kubernetes Cluster Extension."
  value       = azurerm_arc_kubernetes_cluster_extension.this.id
}

output "current_version" {
  description = "The current version of the extension."
  value       = azurerm_arc_kubernetes_cluster_extension.this.current_version
}

output "identity" {
  description = "An 'identity' block."
  value       = azurerm_arc_kubernetes_cluster_extension.this.identity
}

output "principal_id" {
  description = "The Principal ID associated with this Managed Service Identity."
  value       = azurerm_arc_kubernetes_cluster_extension.this.principal_id
}

output "tenant_id" {
  description = "The Tenant ID associated with this Managed Service Identity."
  value       = azurerm_arc_kubernetes_cluster_extension.this.tenant_id
}

