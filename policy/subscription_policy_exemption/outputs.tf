output "name" {
  value = azurerm_subscription_policy_exemption.this.name
}

output "subscription_id" {
  value = azurerm_subscription_policy_exemption.this.subscription_id
}

output "exemption_category" {
  value = azurerm_subscription_policy_exemption.this.exemption_category
}

output "policy_assignment_id" {
  value = azurerm_subscription_policy_exemption.this.policy_assignment_id
}

output "description" {
  value = azurerm_subscription_policy_exemption.this.description
}

output "display_name" {
  value = azurerm_subscription_policy_exemption.this.display_name
}

output "expires_on" {
  value = azurerm_subscription_policy_exemption.this.expires_on
}

output "policy_definition_reference_ids" {
  value = azurerm_subscription_policy_exemption.this.policy_definition_reference_ids
}

output "metadata" {
  value = azurerm_subscription_policy_exemption.this.metadata
}

output "metadata" {
  description = "The metadata for this policy exemption. This is a JSON string representing additional metadata that should be stored with the policy exemption. In addition to the Arguments listed above - the following Attributes are exported:"
  value       = azurerm_subscription_policy_exemption.this.metadata
}

output "id" {
  description = "The Policy Exemption id."
  value       = azurerm_subscription_policy_exemption.this.id
}

