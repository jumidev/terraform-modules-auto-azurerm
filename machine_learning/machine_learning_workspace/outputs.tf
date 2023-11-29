output "name" {
  value = azurerm_machine_learning_workspace.this.name
}

output "resource_group_name" {
  value = azurerm_machine_learning_workspace.this.resource_group_name
}

output "location" {
  value = azurerm_machine_learning_workspace.this.location
}

output "application_insights_id" {
  value = azurerm_machine_learning_workspace.this.application_insights_id
}

output "key_vault_id" {
  value = azurerm_machine_learning_workspace.this.key_vault_id
}

output "storage_account_id" {
  value = azurerm_machine_learning_workspace.this.storage_account_id
}

output "identity" {
  value = azurerm_machine_learning_workspace.this.identity
}

output "container_registry_id" {
  value = azurerm_machine_learning_workspace.this.container_registry_id
}

output "public_access_behind_virtual_network_enabled" {
  value = azurerm_machine_learning_workspace.this.public_access_behind_virtual_network_enabled
}

output "public_network_access_enabled" {
  value = azurerm_machine_learning_workspace.this.public_network_access_enabled
}

output "image_build_compute_name" {
  value = azurerm_machine_learning_workspace.this.image_build_compute_name
}

output "description" {
  value = azurerm_machine_learning_workspace.this.description
}

output "encryption" {
  value = azurerm_machine_learning_workspace.this.encryption
}

output "friendly_name" {
  value = azurerm_machine_learning_workspace.this.friendly_name
}

output "high_business_impact" {
  value = azurerm_machine_learning_workspace.this.high_business_impact
}

output "primary_user_assigned_identity" {
  value = azurerm_machine_learning_workspace.this.primary_user_assigned_identity
}

output "v1_legacy_mode_enabled" {
  value = azurerm_machine_learning_workspace.this.v1_legacy_mode_enabled
}

output "sku_name" {
  value = azurerm_machine_learning_workspace.this.sku_name
}

output "tags" {
  value = azurerm_machine_learning_workspace.this.tags
}

output "id" {
  description = "The ID of the Machine Learning Workspace."
  value       = azurerm_machine_learning_workspace.this.id
}

output "discovery_url" {
  description = "The url for the discovery service to identify regional endpoints for machine learning experimentation services."
  value       = azurerm_machine_learning_workspace.this.discovery_url
}

output "workspace_id" {
  description = "The immutable id associated with this workspace."
  value       = azurerm_machine_learning_workspace.this.workspace_id
}

output "principal_id" {
  description = "The Principal ID associated with this Managed Service Identity."
  value       = azurerm_machine_learning_workspace.this.principal_id
}

output "tenant_id" {
  description = "The Tenant ID associated with this Managed Service Identity."
  value       = azurerm_machine_learning_workspace.this.tenant_id
}

output "create" {
  description = "(Defaults to 30 minutes) Used when creating the Machine Learning Workspace."
  value       = azurerm_machine_learning_workspace.this.create
}

output "update" {
  description = "(Defaults to 30 minutes) Used when updating the Machine Learning Workspace."
  value       = azurerm_machine_learning_workspace.this.update
}

output "read" {
  description = "(Defaults to 5 minutes) Used when retrieving the Machine Learning Workspace."
  value       = azurerm_machine_learning_workspace.this.read
}

output "delete" {
  description = "(Defaults to 30 minutes) Used when deleting the Machine Learning Workspace."
  value       = azurerm_machine_learning_workspace.this.delete
}

