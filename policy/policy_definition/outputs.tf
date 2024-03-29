output "name" {
  value = azurerm_policy_definition.this.name
}

output "policy_type" {
  value = azurerm_policy_definition.this.policy_type
}

output "mode" {
  value = azurerm_policy_definition.this.mode
}

output "display_name" {
  value = azurerm_policy_definition.this.display_name
}

output "description" {
  value = azurerm_policy_definition.this.description
}

output "management_group_id" {
  value = azurerm_policy_definition.this.management_group_id
}

output "policy_rule" {
  value = azurerm_policy_definition.this.policy_rule
}

output "metadata" {
  value = azurerm_policy_definition.this.metadata
}

output "parameters" {
  value = azurerm_policy_definition.this.parameters
}

output "parameters" {
  description = "Parameters for the policy definition. This field is a JSON string that allows you to parameterize your policy definition. In addition to the Arguments listed above - the following Attributes are exported:"
  value       = azurerm_policy_definition.this.parameters
}

output "id" {
  description = "The ID of the Policy Definition."
  value       = azurerm_policy_definition.this.id
}

output "role_definition_ids" {
  description = "A list of role definition id extracted from 'policy_rule' required for remediation."
  value       = azurerm_policy_definition.this.role_definition_ids
}

