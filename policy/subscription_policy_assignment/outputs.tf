output "name" {
  value = azurerm_subscription_policy_assignment.this.name
}

output "policy_definition_id" {
  value = azurerm_subscription_policy_assignment.this.policy_definition_id
}

output "subscription_id" {
  value = azurerm_subscription_policy_assignment.this.subscription_id
}

output "description" {
  value = azurerm_subscription_policy_assignment.this.description
}

output "display_name" {
  value = azurerm_subscription_policy_assignment.this.display_name
}

output "enforce" {
  value = azurerm_subscription_policy_assignment.this.enforce
}

output "identity" {
  value = azurerm_subscription_policy_assignment.this.identity
}

output "location" {
  value = azurerm_subscription_policy_assignment.this.location
}

output "metadata" {
  value = azurerm_subscription_policy_assignment.this.metadata
}

output "non_compliance_message" {
  value = azurerm_subscription_policy_assignment.this.non_compliance_message
}

output "not_scopes" {
  value = azurerm_subscription_policy_assignment.this.not_scopes
}

output "parameters" {
  value = azurerm_subscription_policy_assignment.this.parameters
}

output "overrides" {
  value = azurerm_subscription_policy_assignment.this.overrides
}

output "resource_selectors" {
  value = azurerm_subscription_policy_assignment.this.resource_selectors
}

output "id" {
  description = "The ID of the Subscription Policy Assignment."
  value       = azurerm_subscription_policy_assignment.this.id
}

output "principal_id" {
  description = "The Principal ID of the Policy Assignment for this Subscription."
  value       = azurerm_subscription_policy_assignment.this.principal_id
}

output "tenant_id" {
  description = "The Tenant ID of the Policy Assignment for this Subscription."
  value       = azurerm_subscription_policy_assignment.this.tenant_id
}

