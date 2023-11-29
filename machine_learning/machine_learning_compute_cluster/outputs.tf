output "name" {
  value = azurerm_machine_learning_compute_cluster.this.name
}

output "machine_learning_workspace_id" {
  value = azurerm_machine_learning_compute_cluster.this.machine_learning_workspace_id
}

output "location" {
  value = azurerm_machine_learning_compute_cluster.this.location
}

output "vm_priority" {
  value = azurerm_machine_learning_compute_cluster.this.vm_priority
}

output "vm_size" {
  value = azurerm_machine_learning_compute_cluster.this.vm_size
}

output "scale_settings" {
  value = azurerm_machine_learning_compute_cluster.this.scale_settings
}

output "ssh" {
  value = azurerm_machine_learning_compute_cluster.this.ssh
}

output "description" {
  value = azurerm_machine_learning_compute_cluster.this.description
}

output "identity" {
  value = azurerm_machine_learning_compute_cluster.this.identity
}

output "local_auth_enabled" {
  value = azurerm_machine_learning_compute_cluster.this.local_auth_enabled
}

output "node_public_ip_enabled" {
  value = azurerm_machine_learning_compute_cluster.this.node_public_ip_enabled
}

output "ssh_public_access_enabled" {
  value = azurerm_machine_learning_compute_cluster.this.ssh_public_access_enabled
}

output "subnet_resource_id" {
  value = azurerm_machine_learning_compute_cluster.this.subnet_resource_id
}

output "tags" {
  value = azurerm_machine_learning_compute_cluster.this.tags
}

output "id" {
  description = "The ID of the Machine Learning Compute Cluster."
  value       = azurerm_machine_learning_compute_cluster.this.id
}

output "identity" {
  description = "An 'identity' block, which contains the Managed Service Identity information for this Machine Learning Compute Cluster."
  value       = azurerm_machine_learning_compute_cluster.this.identity
}

output "principal_id" {
  description = "The Principal ID for the Service Principal associated with the Managed Service Identity of this Machine Learning Compute Cluster."
  value       = azurerm_machine_learning_compute_cluster.this.principal_id
}

output "tenant_id" {
  description = "The Tenant ID for the Service Principal associated with the Managed Service Identity of this Machine Learning Compute Cluster."
  value       = azurerm_machine_learning_compute_cluster.this.tenant_id
}

