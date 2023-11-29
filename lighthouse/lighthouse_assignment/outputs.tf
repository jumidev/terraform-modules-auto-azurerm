output "name" {
  value = azurerm_lighthouse_assignment.this.name
}

output "scope" {
  value = azurerm_lighthouse_assignment.this.scope
}

output "lighthouse_definition_id" {
  value = azurerm_lighthouse_assignment.this.lighthouse_definition_id
}

output "id" {
  description = "the fully qualified ID of the Lighthouse Assignment."
  value       = azurerm_lighthouse_assignment.this.id
}

