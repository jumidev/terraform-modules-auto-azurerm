output "name" {
  value = azurerm_role_assignment.this.name
}

output "scope" {
  value = azurerm_role_assignment.this.scope
}

output "role_definition_id" {
  value = azurerm_role_assignment.this.role_definition_id
}

output "role_definition_name" {
  value = azurerm_role_assignment.this.role_definition_name
}

output "principal_id" {
  value = azurerm_role_assignment.this.principal_id
}

output "principal_type" {
  value = azurerm_role_assignment.this.principal_type
}

output "condition" {
  value = azurerm_role_assignment.this.condition
}

output "condition_version" {
  value = azurerm_role_assignment.this.condition_version
}

output "delegated_managed_identity_resource_id" {
  value = azurerm_role_assignment.this.delegated_managed_identity_resource_id
}

output "description" {
  value = azurerm_role_assignment.this.description
}

output "skip_service_principal_aad_check" {
  value = azurerm_role_assignment.this.skip_service_principal_aad_check
}

output "skip_service_principal_aad_check" {
  description = "If the 'principal_id' is a newly provisioned 'Service Principal' set this value to 'true' to skip the 'Azure Active Directory' check which may fail due to replication lag. This argument is only valid if the 'principal_id' is a 'Service Principal' identity. Defaults to 'false'. ~> **NOTE:** If it is not a 'Service Principal' identity it will cause the role assignment to fail. In addition to the Arguments listed above - the following Attributes are exported:"
  value       = azurerm_role_assignment.this.skip_service_principal_aad_check
}

output "id" {
  description = "The Role Assignment ID."
  value       = azurerm_role_assignment.this.id
}

