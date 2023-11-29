output "principal_id" {
  value = azurerm_pim_eligible_role_assignment.this.principal_id
}

output "role_definition_id" {
  value = azurerm_pim_eligible_role_assignment.this.role_definition_id
}

output "scope" {
  value = azurerm_pim_eligible_role_assignment.this.scope
}

output "justification" {
  value = azurerm_pim_eligible_role_assignment.this.justification
}

output "schedule" {
  value = azurerm_pim_eligible_role_assignment.this.schedule
}

output "ticket" {
  value = azurerm_pim_eligible_role_assignment.this.ticket
}

output "id" {
  description = "The ID of the Pim Eligible Role Assignment."
  value       = azurerm_pim_eligible_role_assignment.this.id
}

output "principal_type" {
  description = "The type of principal."
  value       = azurerm_pim_eligible_role_assignment.this.principal_type
}

