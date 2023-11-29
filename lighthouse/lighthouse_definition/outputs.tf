output "lighthouse_definition_id" {
  value = azurerm_lighthouse_definition.this.lighthouse_definition_id
}

output "name" {
  value = azurerm_lighthouse_definition.this.name
}

output "managing_tenant_id" {
  value = azurerm_lighthouse_definition.this.managing_tenant_id
}

output "scope" {
  value = azurerm_lighthouse_definition.this.scope
}

output "authorization" {
  value = azurerm_lighthouse_definition.this.authorization
}

output "description" {
  value = azurerm_lighthouse_definition.this.description
}

output "eligible_authorization" {
  value = azurerm_lighthouse_definition.this.eligible_authorization
}

output "plan" {
  value = azurerm_lighthouse_definition.this.plan
}

output "id" {
  description = "the fully qualified ID of the Lighthouse Definition."
  value       = azurerm_lighthouse_definition.this.id
}

