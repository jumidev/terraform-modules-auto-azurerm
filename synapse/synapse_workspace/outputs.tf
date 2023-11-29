output "name" {
  value = azurerm_synapse_workspace.this.name
}

output "resource_group_name" {
  value = azurerm_synapse_workspace.this.resource_group_name
}

output "location" {
  value = azurerm_synapse_workspace.this.location
}

output "identity" {
  value = azurerm_synapse_workspace.this.identity
}

output "storage_data_lake_gen2_filesystem_id" {
  value = azurerm_synapse_workspace.this.storage_data_lake_gen2_filesystem_id
}

output "sql_administrator_login" {
  value = azurerm_synapse_workspace.this.sql_administrator_login
}

output "sql_administrator_login_password" {
  value     = random_string.sql_administrator_login_password.result
  sensitive = true
}

output "azuread_authentication_only" {
  value = azurerm_synapse_workspace.this.azuread_authentication_only
}

output "aad_admin" {
  value = azurerm_synapse_workspace.this.aad_admin
}

output "compute_subnet_id" {
  value = azurerm_synapse_workspace.this.compute_subnet_id
}

output "azure_devops_repo" {
  value = azurerm_synapse_workspace.this.azure_devops_repo
}

output "data_exfiltration_protection_enabled" {
  value = azurerm_synapse_workspace.this.data_exfiltration_protection_enabled
}

output "customer_managed_key" {
  value = azurerm_synapse_workspace.this.customer_managed_key
}

output "github_repo" {
  value = azurerm_synapse_workspace.this.github_repo
}

output "linking_allowed_for_aad_tenant_ids" {
  value = azurerm_synapse_workspace.this.linking_allowed_for_aad_tenant_ids
}

output "managed_resource_group_name" {
  value = azurerm_synapse_workspace.this.managed_resource_group_name
}

output "managed_virtual_network_enabled" {
  value = azurerm_synapse_workspace.this.managed_virtual_network_enabled
}

output "public_network_access_enabled" {
  value = azurerm_synapse_workspace.this.public_network_access_enabled
}

output "purview_id" {
  value = azurerm_synapse_workspace.this.purview_id
}

output "sql_aad_admin" {
  value = azurerm_synapse_workspace.this.sql_aad_admin
}

output "sql_identity_control_enabled" {
  value = azurerm_synapse_workspace.this.sql_identity_control_enabled
}

output "tags" {
  value = azurerm_synapse_workspace.this.tags
}

output "id" {
  description = "The ID of the synapse Workspace."
  value       = azurerm_synapse_workspace.this.id
}

output "connectivity_endpoints" {
  description = "A list of Connectivity endpoints for this Synapse Workspace."
  value       = azurerm_synapse_workspace.this.connectivity_endpoints
}

output "principal_id" {
  description = "The Principal ID for the Service Principal associated with the Managed Service Identity of this Synapse Workspace."
  value       = azurerm_synapse_workspace.this.principal_id
}

output "tenant_id" {
  description = "The Tenant ID for the Service Principal associated with the Managed Service Identity of this Synapse Workspace."
  value       = azurerm_synapse_workspace.this.tenant_id
}

