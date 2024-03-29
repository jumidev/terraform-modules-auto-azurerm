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

output "principal_type" {
  description = "The Type of the Principal. One of 'User', 'Group' or 'ServicePrincipal'. Changing this forces a new resource to be created. -> **NOTE:** While 'principal_type' is optional, it's still recommended to set this value, as some Synapse use-cases may not work correctly if this is not specified. Service Principals for example can't run SQL statements using 'Entra ID' authentication if 'principal_type' is not set to 'ServicePrincipal'. In addition to the Arguments listed above - the following Attributes are exported:"
  value       = azurerm_synapse_role_assignment.this.principal_type
}

output "id" {
  description = "The Synapse Role Assignment ID."
  value       = azurerm_synapse_role_assignment.this.id
}

