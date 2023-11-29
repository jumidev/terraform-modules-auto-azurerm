output "name" {
  value = azurerm_resource_policy_exemption.this.name
}

output "resource_id" {
  value = azurerm_resource_policy_exemption.this.resource_id
}

output "exemption_category" {
  value = azurerm_resource_policy_exemption.this.exemption_category
}

output "policy_assignment_id" {
  value = azurerm_resource_policy_exemption.this.policy_assignment_id
}

output "description" {
  value = azurerm_resource_policy_exemption.this.description
}

output "display_name" {
  value = azurerm_resource_policy_exemption.this.display_name
}

output "expires_on" {
  value = azurerm_resource_policy_exemption.this.expires_on
}

output "policy_definition_reference_ids" {
  value = azurerm_resource_policy_exemption.this.policy_definition_reference_ids
}

output "metadata" {
  value = azurerm_resource_policy_exemption.this.metadata
}

output "id" {
  description = "The Policy Exemption id."
  value       = azurerm_resource_policy_exemption.this.id
}

