output "synapse_workspace_id" {
  value = azurerm_synapse_role_assignment.this.synapse_workspace_id
}

output "synapse_spark_pool_id" {
  value = azurerm_synapse_role_assignment.this.synapse_spark_pool_id
}

output "role_name" {
  value = azurerm_synapse_role_assignment.this.role_name
}

output "principal_id" {
  value = azurerm_synapse_role_assignment.this.principal_id
}

output "principal_type" {
  value = azurerm_synapse_role_assignment.this.principal_type
}

output "id" {
  description = "The Synapse Role Assignment ID."
  value       = azurerm_synapse_role_assignment.this.id
}

