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

output "id" {
  description = "The Role Assignment ID."
  value       = azurerm_role_assignment.this.id
}

output "principal_type" {
  description = "The type of the 'principal_id', e.g. User, Group, Service Principal, Application, etc."
  value       = azurerm_role_assignment.this.principal_type
}

