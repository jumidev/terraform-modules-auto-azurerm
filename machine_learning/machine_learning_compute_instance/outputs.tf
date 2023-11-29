output "name" {
  value = azurerm_machine_learning_compute_instance.this.name
}

output "location" {
  value = azurerm_machine_learning_compute_instance.this.location
}

output "machine_learning_workspace_id" {
  value = azurerm_machine_learning_compute_instance.this.machine_learning_workspace_id
}

output "virtual_machine_size" {
  value = azurerm_machine_learning_compute_instance.this.virtual_machine_size
}

output "authorization_type" {
  value = azurerm_machine_learning_compute_instance.this.authorization_type
}

output "assign_to_user" {
  value = azurerm_machine_learning_compute_instance.this.assign_to_user
}

output "description" {
  value = azurerm_machine_learning_compute_instance.this.description
}

output "identity" {
  value = azurerm_machine_learning_compute_instance.this.identity
}

output "local_auth_enabled" {
  value = azurerm_machine_learning_compute_instance.this.local_auth_enabled
}

output "ssh" {
  value = azurerm_machine_learning_compute_instance.this.ssh
}

output "subnet_resource_id" {
  value = azurerm_machine_learning_compute_instance.this.subnet_resource_id
}

output "node_public_ip_enabled" {
  value = azurerm_machine_learning_compute_instance.this.node_public_ip_enabled
}

output "tags" {
  value = azurerm_machine_learning_compute_instance.this.tags
}

output "id" {
  description = "The ID of the Machine Learning Compute Instance."
  value       = azurerm_machine_learning_compute_instance.this.id
}

output "identity" {
  description = "An 'identity' block, which contains the Managed Service Identity information for this Machine Learning Compute Instance."
  value       = azurerm_machine_learning_compute_instance.this.identity
}

output "ssh" {
  description = "An 'ssh' block, which specifies policy and settings for SSH access for this Machine Learning Compute Instance."
  value       = azurerm_machine_learning_compute_instance.this.ssh
}

output "principal_id" {
  description = "The Principal ID for the Service Principal associated with the Managed Service Identity of this Machine Learning Compute Instance."
  value       = azurerm_machine_learning_compute_instance.this.principal_id
}

output "tenant_id" {
  description = "The Tenant ID for the Service Principal associated with the Managed Service Identity of this Machine Learning Compute Instance."
  value       = azurerm_machine_learning_compute_instance.this.tenant_id
}

output "username" {
  description = "The admin username of this Machine Learning Compute Instance."
  value       = azurerm_machine_learning_compute_instance.this.username
}

output "port" {
  description = "Describes the port for connecting through SSH."
  value       = azurerm_machine_learning_compute_instance.this.port
}

