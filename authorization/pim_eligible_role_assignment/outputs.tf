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

output "system" {
  description = "User-supplied ticket system name to be included with the request. Changing this forces a new resource to be created. In addition to the Arguments listed above - the following Attributes are exported:"
  value       = azurerm_pim_eligible_role_assignment.this.system
}

output "id" {
  description = "The ID of the PIM Eligible Role Assignment."
  value       = azurerm_pim_eligible_role_assignment.this.id
}

output "principal_type" {
  description = "Type of principal to which the role will be assigned."
  value       = azurerm_pim_eligible_role_assignment.this.principal_type
}

