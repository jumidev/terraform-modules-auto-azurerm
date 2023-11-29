output "name" {
  value = azurerm_policy_set_definition.this.name
}

output "policy_type" {
  value = azurerm_policy_set_definition.this.policy_type
}

output "display_name" {
  value = azurerm_policy_set_definition.this.display_name
}

output "policy_definition_reference" {
  value = azurerm_policy_set_definition.this.policy_definition_reference
}

output "policy_definition_group" {
  value = azurerm_policy_set_definition.this.policy_definition_group
}

output "description" {
  value = azurerm_policy_set_definition.this.description
}

output "management_group_id" {
  value = azurerm_policy_set_definition.this.management_group_id
}

output "metadata" {
  value = azurerm_policy_set_definition.this.metadata
}

output "parameters" {
  value = azurerm_policy_set_definition.this.parameters
}

output "id" {
  description = "The ID of the Policy Set Definition."
  value       = azurerm_policy_set_definition.this.id
}

