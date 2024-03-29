output "role_definition_id" {
  value = azurerm_role_definition.this.role_definition_id
}

output "name" {
  value = azurerm_role_definition.this.name
}

output "scope" {
  value = azurerm_role_definition.this.scope
}

output "description" {
  value = azurerm_role_definition.this.description
}

output "permissions" {
  value = azurerm_role_definition.this.permissions
}

output "assignable_scopes" {
  value = azurerm_role_definition.this.assignable_scopes
}

output "not_data_actions" {
  description = "One or more Disallowed Data Actions, such as '*', 'Microsoft.Resources/subscriptions/resourceGroups/read'. See ['Azure Resource Manager resource provider operations'](https://docs.microsoft.com/azure/role-based-access-control/resource-provider-operations) for details. In addition to the Arguments listed above - the following Attributes are exported:"
  value       = azurerm_role_definition.this.not_data_actions
}

output "id" {
  description = "This ID is specific to Terraform - and is of the format '{roleDefinitionId}|{scope}'."
  value       = azurerm_role_definition.this.id
}

output "role_definition_id" {
  description = "The Role Definition ID. Changing this forces a new resource to be created."
  value       = azurerm_role_definition.this.role_definition_id
}

output "role_definition_resource_id" {
  description = "The Azure Resource Manager ID for the resource."
  value       = azurerm_role_definition.this.role_definition_resource_id
}

