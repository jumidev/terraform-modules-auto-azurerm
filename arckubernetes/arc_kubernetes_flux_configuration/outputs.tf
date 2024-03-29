output "name" {
  value = azurerm_arc_kubernetes_flux_configuration.this.name
}

output "cluster_id" {
  value = azurerm_arc_kubernetes_flux_configuration.this.cluster_id
}

output "kustomizations" {
  value = azurerm_arc_kubernetes_flux_configuration.this.kustomizations
}

output "namespace" {
  value = azurerm_arc_kubernetes_flux_configuration.this.namespace
}

output "blob_storage" {
  value = azurerm_arc_kubernetes_flux_configuration.this.blob_storage
}

output "bucket" {
  value = azurerm_arc_kubernetes_flux_configuration.this.bucket
}

output "git_repository" {
  value = azurerm_arc_kubernetes_flux_configuration.this.git_repository
}

output "scope" {
  value = azurerm_arc_kubernetes_flux_configuration.this.scope
}

output "continuous_reconciliation_enabled" {
  value = azurerm_arc_kubernetes_flux_configuration.this.continuous_reconciliation_enabled
}

output "timeout_in_seconds" {
  description = "Specifies the maximum time to attempt to reconcile the cluster git repository source with the remote. Defaults to '600'. In addition to the Arguments listed above - the following Attributes are exported:"
  value       = azurerm_arc_kubernetes_flux_configuration.this.timeout_in_seconds
}

output "id" {
  description = "The ID of the Arc Kubernetes Flux Configuration."
  value       = azurerm_arc_kubernetes_flux_configuration.this.id
}

