output "name" {
  value = azurerm_machine_learning_inference_cluster.this.name
}

output "kubernetes_cluster_id" {
  value = azurerm_machine_learning_inference_cluster.this.kubernetes_cluster_id
}

output "location" {
  value = azurerm_machine_learning_inference_cluster.this.location
}

output "machine_learning_workspace_id" {
  value = azurerm_machine_learning_inference_cluster.this.machine_learning_workspace_id
}

output "cluster_purpose" {
  value = azurerm_machine_learning_inference_cluster.this.cluster_purpose
}

output "description" {
  value = azurerm_machine_learning_inference_cluster.this.description
}

output "identity" {
  value = azurerm_machine_learning_inference_cluster.this.identity
}

output "ssl" {
  value = azurerm_machine_learning_inference_cluster.this.ssl
}

output "tags" {
  value = azurerm_machine_learning_inference_cluster.this.tags
}

output "id" {
  description = "The ID of the Machine Learning Inference Cluster."
  value       = azurerm_machine_learning_inference_cluster.this.id
}

output "identity" {
  description = "An 'identity' block, which contains the Managed Service Identity information for this Machine Learning Inference Cluster."
  value       = azurerm_machine_learning_inference_cluster.this.identity
}

output "principal_id" {
  description = "The Principal ID for the Service Principal associated with the Managed Service Identity of this Machine Learning Inference Cluster."
  value       = azurerm_machine_learning_inference_cluster.this.principal_id
}

output "tenant_id" {
  description = "The Tenant ID for the Service Principal associated with the Managed Service Identity of this Machine Learning Inference Cluster."
  value       = azurerm_machine_learning_inference_cluster.this.tenant_id
}

