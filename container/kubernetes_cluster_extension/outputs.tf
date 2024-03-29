output "name" {
  value = azurerm_kubernetes_cluster_extension.this.name
}

output "cluster_id" {
  value = azurerm_kubernetes_cluster_extension.this.cluster_id
}

output "extension_type" {
  value = azurerm_kubernetes_cluster_extension.this.extension_type
}

output "configuration_protected_settings" {
  value = azurerm_kubernetes_cluster_extension.this.configuration_protected_settings
}

output "configuration_settings" {
  value = azurerm_kubernetes_cluster_extension.this.configuration_settings
}

output "plan" {
  value = azurerm_kubernetes_cluster_extension.this.plan
}

output "release_train" {
  value = azurerm_kubernetes_cluster_extension.this.release_train
}

output "release_namespace" {
  value = azurerm_kubernetes_cluster_extension.this.release_namespace
}

output "target_namespace" {
  value = azurerm_kubernetes_cluster_extension.this.target_namespace
}

output "version" {
  value = azurerm_kubernetes_cluster_extension.this.version
}

output "version" {
  description = "Specifies the version of the plan from the marketplace. Changing this forces a new Kubernetes Cluster Extension to be created. ~> **NOTE:** When 'plan' is specified, legal terms must be accepted for this item on this subscription before creating the Kubernetes Cluster Extension. The 'azurerm_marketplace_agreement' resource or AZ CLI tool can be used to do this. In addition to the Arguments listed above - the following Attributes are exported:"
  value       = azurerm_kubernetes_cluster_extension.this.version
}

output "id" {
  description = "The ID of the Kubernetes Cluster Extension."
  value       = azurerm_kubernetes_cluster_extension.this.id
}

output "aks_assigned_identity" {
  description = "An 'aks_assigned_identity' block."
  value       = azurerm_kubernetes_cluster_extension.this.aks_assigned_identity
}

output "current_version" {
  description = "The current version of the extension."
  value       = azurerm_kubernetes_cluster_extension.this.current_version
}

output "type" {
  description = "The identity type."
  value       = azurerm_kubernetes_cluster_extension.this.type
}

output "principal_id" {
  description = "The principal ID of resource identity."
  value       = azurerm_kubernetes_cluster_extension.this.principal_id
}

output "tenant_id" {
  description = "The tenant ID of resource."
  value       = azurerm_kubernetes_cluster_extension.this.tenant_id
}

