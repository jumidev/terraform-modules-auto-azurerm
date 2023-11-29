output "name" {
  value = azurerm_confidential_ledger.this.name
}

output "resource_group_name" {
  value = azurerm_confidential_ledger.this.resource_group_name
}

output "location" {
  value = azurerm_confidential_ledger.this.location
}

output "azuread_based_service_principal" {
  value = azurerm_confidential_ledger.this.azuread_based_service_principal
}

output "ledger_type" {
  value = azurerm_confidential_ledger.this.ledger_type
}

output "certificate_based_security_principal" {
  value = azurerm_confidential_ledger.this.certificate_based_security_principal
}

output "tags" {
  value = azurerm_confidential_ledger.this.tags
}

output "id" {
  description = "The ID of this Confidential Ledger."
  value       = azurerm_confidential_ledger.this.id
}

output "identity_service_endpoint" {
  description = "The Identity Service Endpoint for this Confidential Ledger."
  value       = azurerm_confidential_ledger.this.identity_service_endpoint
}

output "ledger_endpoint" {
  description = "The Endpoint for this Confidential Ledger."
  value       = azurerm_confidential_ledger.this.ledger_endpoint
}

