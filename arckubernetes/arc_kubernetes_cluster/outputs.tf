output "name" {
  value = azurerm_arc_kubernetes_cluster.this.name
}

output "resource_group_name" {
  value = azurerm_arc_kubernetes_cluster.this.resource_group_name
}

output "agent_public_key_certificate" {
  value = azurerm_arc_kubernetes_cluster.this.agent_public_key_certificate
}

output "identity" {
  value = azurerm_arc_kubernetes_cluster.this.identity
}

output "location" {
  value = azurerm_arc_kubernetes_cluster.this.location
}

output "tags" {
  value = azurerm_arc_kubernetes_cluster.this.tags
}

output "type" {
  description = "Specifies the type of Managed Service Identity assigned to this Arc Kubernetes Cluster. At this time the only possible value is 'SystemAssigned'. Changing this forces a new resource to be created. In addition to the Arguments listed above - the following Attributes are exported:"
  value       = azurerm_arc_kubernetes_cluster.this.type
}

output "id" {
  description = "The ID of the Arc Kubernetes Cluster."
  value       = azurerm_arc_kubernetes_cluster.this.id
}

output "agent_version" {
  description = "Version of the agent running on the cluster resource."
  value       = azurerm_arc_kubernetes_cluster.this.agent_version
}

output "distribution" {
  description = "The distribution running on this Arc Kubernetes Cluster."
  value       = azurerm_arc_kubernetes_cluster.this.distribution
}

output "identity" {
  description = "An 'identity' block."
  value       = azurerm_arc_kubernetes_cluster.this.identity
}

output "infrastructure" {
  description = "The infrastructure on which the Arc Kubernetes Cluster is running on."
  value       = azurerm_arc_kubernetes_cluster.this.infrastructure
}

output "kubernetes_version" {
  description = "The Kubernetes version of the cluster resource."
  value       = azurerm_arc_kubernetes_cluster.this.kubernetes_version
}

output "offering" {
  description = "The cluster offering."
  value       = azurerm_arc_kubernetes_cluster.this.offering
}

output "total_core_count" {
  description = "Number of CPU cores present in the cluster resource."
  value       = azurerm_arc_kubernetes_cluster.this.total_core_count
}

output "total_node_count" {
  description = "Number of nodes present in the cluster resource."
  value       = azurerm_arc_kubernetes_cluster.this.total_node_count
}

output "principal_id" {
  description = "The Principal ID associated with this Managed Service Identity."
  value       = azurerm_arc_kubernetes_cluster.this.principal_id
}

output "tenant_id" {
  description = "The Tenant ID associated with this Managed Service Identity."
  value       = azurerm_arc_kubernetes_cluster.this.tenant_id
}

