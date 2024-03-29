output "principal_id" {
  value = azurerm_role_assignment_marketplace.this.principal_id
}

output "name" {
  value = azurerm_role_assignment_marketplace.this.name
}

output "role_definition_id" {
  value = azurerm_role_assignment_marketplace.this.role_definition_id
}

output "role_definition_name" {
  value = azurerm_role_assignment_marketplace.this.role_definition_name
}

output "condition" {
  value = azurerm_role_assignment_marketplace.this.condition
}

output "condition_version" {
  value = azurerm_role_assignment_marketplace.this.condition_version
}

output "delegated_managed_identity_resource_id" {
  value = azurerm_role_assignment_marketplace.this.delegated_managed_identity_resource_id
}

output "description" {
  value = azurerm_role_assignment_marketplace.this.description
}

output "skip_service_principal_aad_check" {
  value = azurerm_role_assignment_marketplace.this.skip_service_principal_aad_check
}

output "skip_service_principal_aad_check" {
  description = "If the 'principal_id' is a newly provisioned 'Service Principal' set this value to 'true' to skip the 'Azure Active Directory' check which may fail due to replication lag. This argument is only valid if the 'principal_id' is a 'Service Principal' identity. Defaults to 'false'. Changing this forces a new resource to be created. ~> **NOTE:** This field takes effect only when 'principal_id' is a 'Service Principal' identity. In addition to the Arguments listed above - the following Attributes are exported:"
  value       = azurerm_role_assignment_marketplace.this.skip_service_principal_aad_check
}

output "id" {
  description = "The Role Assignment ID."
  value       = azurerm_role_assignment_marketplace.this.id
}

output "principal_type" {
  description = "The type of the 'principal_id', e.g. User, Group, Service Principal, Application, etc."
  value       = azurerm_role_assignment_marketplace.this.principal_type
}

