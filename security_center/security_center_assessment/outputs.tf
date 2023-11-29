output "assessment_policy_id" {
  value = azurerm_security_center_assessment.this.assessment_policy_id
}

output "target_resource_id" {
  value = azurerm_security_center_assessment.this.target_resource_id
}

output "status" {
  value = azurerm_security_center_assessment.this.status
}

output "additional_data" {
  value = azurerm_security_center_assessment.this.additional_data
}

output "id" {
  description = "The ID of the Security Center Assessment."
  value       = azurerm_security_center_assessment.this.id
}

