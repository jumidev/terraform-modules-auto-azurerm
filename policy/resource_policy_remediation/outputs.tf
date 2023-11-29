output "name" {
  value = azurerm_resource_policy_remediation.this.name
}

output "resource_id" {
  value = azurerm_resource_policy_remediation.this.resource_id
}

output "policy_assignment_id" {
  value = azurerm_resource_policy_remediation.this.policy_assignment_id
}

output "policy_definition_id" {
  value = azurerm_resource_policy_remediation.this.policy_definition_id
}

output "policy_definition_reference_id" {
  value = azurerm_resource_policy_remediation.this.policy_definition_reference_id
}

output "location_filters" {
  value = azurerm_resource_policy_remediation.this.location_filters
}

output "resource_discovery_mode" {
  value = azurerm_resource_policy_remediation.this.resource_discovery_mode
}

output "failure_percentage" {
  value = azurerm_resource_policy_remediation.this.failure_percentage
}

output "parallel_deployments" {
  value = azurerm_resource_policy_remediation.this.parallel_deployments
}

output "resource_count" {
  value = azurerm_resource_policy_remediation.this.resource_count
}

output "id" {
  description = "The ID of the Policy Remediation."
  value       = azurerm_resource_policy_remediation.this.id
}

