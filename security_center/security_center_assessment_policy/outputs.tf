output "description" {
  value = azurerm_security_center_assessment_policy.this.description
}

output "display_name" {
  value = azurerm_security_center_assessment_policy.this.display_name
}

output "severity" {
  value = azurerm_security_center_assessment_policy.this.severity
}

output "categories" {
  value = azurerm_security_center_assessment_policy.this.categories
}

output "implementation_effort" {
  value = azurerm_security_center_assessment_policy.this.implementation_effort
}

output "remediation_description" {
  value = azurerm_security_center_assessment_policy.this.remediation_description
}

output "threats" {
  value = azurerm_security_center_assessment_policy.this.threats
}

output "user_impact" {
  value = azurerm_security_center_assessment_policy.this.user_impact
}

output "id" {
  description = "The ID of the Security Center Assessment Policy."
  value       = azurerm_security_center_assessment_policy.this.id
}

output "name" {
  description = "The GUID as the name of the Security Center Assessment Policy."
  value       = azurerm_security_center_assessment_policy.this.name
}

